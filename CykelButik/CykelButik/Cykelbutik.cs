using System;
using System.Collections.Generic;
using System.Text;

namespace CykelButik
{
    class Cykelbutik
    {
        public List<Cykler> ListeAfCykler = new List<Cykler>();
        public string hjulstørrelserOverDetGivne(double index)
        {
            string[] CykelNavne = { ListeAfCykler[0].mærke, ListeAfCykler[1].mærke };
            if(index > ListeAfCykler[0].hjulstørrelse || index > ListeAfCykler[1].hjulstørrelse)
            {
                return "Der er ikke nogen hjulstørrelse over det indskrevne.";
            }
            else if (ListeAfCykler[0].hjulstørrelse > index && ListeAfCykler[1].hjulstørrelse < index)
            {
                return ListeAfCykler[0].mærke;
            }
            else if (ListeAfCykler[0].hjulstørrelse < index && ListeAfCykler[1].hjulstørrelse > index)
            {
                return ListeAfCykler[1].mærke;
            }
            return CykelNavne.ToString();
        }
        public string hjulstørrelserUnderDetGivne(double index)
        {
            string[] CykelNavne = { ListeAfCykler[0].mærke, ListeAfCykler[1].mærke };
            if(index < ListeAfCykler[0].hjulstørrelse && index < ListeAfCykler[1].hjulstørrelse)
            {
                return "Der er ikke nogen hjulstørrelse under det indskrevne.";
            }
            else if (ListeAfCykler[0].hjulstørrelse < index && ListeAfCykler[1].hjulstørrelse > index)
            {
                return ListeAfCykler[0].mærke;
            }
            else if (ListeAfCykler[0].hjulstørrelse > index && ListeAfCykler[1].hjulstørrelse < index)
            {
                return ListeAfCykler[1].mærke;
            }
            return CykelNavne.ToString();
        }
    }
}
