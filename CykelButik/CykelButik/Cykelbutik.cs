using System;
using System.Collections.Generic;
using System.Text;

namespace CykelButik
{
    class Cykelbutik
    {
        Cykler cykel1 = new Cykler("MerckX", 17.5, "Hvid");
        Cykler cykel2 = new Cykler("MerckXRacer", 20.0, "Sort");

        public string hjulstørrelserOverDetGivne(double index)
        {
            string[] CykelNavne = { cykel1.mærke, cykel2.mærke };
            if(index > cykel1.hjulstørrelse || index > cykel2.hjulstørrelse)
            {
                Console.WriteLine("Der er ikke nogen hjulstørrelse over det indskrevne.");
            }
            else if (cykel1.hjulstørrelse > index && cykel2.hjulstørrelse < index)
            {
                return cykel1.mærke;
            }
            else if (cykel1.hjulstørrelse < index && cykel2.hjulstørrelse > index)
            {
                return cykel2.mærke;
            }
            return CykelNavne.ToString();
        }
        public string hjulstørrelserUnderDetGivne(double index)
        {
            string[] CykelNavne = { cykel1.mærke, cykel2.mærke };
            if(index < cykel1.hjulstørrelse && index < cykel2.hjulstørrelse)
            {
                Console.WriteLine("Der er ikke nogen hjulstørrelse under det indskrevne.");
            }
            else if (cykel1.hjulstørrelse < index && cykel2.hjulstørrelse > index)
            {
                return cykel1.mærke;
            }
            else if (cykel1.hjulstørrelse > index && cykel2.hjulstørrelse < index)
            {
                return cykel2.mærke
            }
            return CykelNavne.ToString();
        }
    }
}
