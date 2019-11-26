using System;
using System.Collections.Generic;

namespace CykelButik
{
    class Program
    {
        static void Main(string[] args)
        {
           
            Cykler cykel1 = new Cykler("Fast track", 32.0, "Sort");
            Cykler cykel2 = new Cykler("Dex", 28.0, "Gul");
            Cykelbutik MinButik = new Cykelbutik();

            MinButik.ListeAfCykler.Add(cykel1);
            MinButik.ListeAfCykler.Add(cykel2);

            int i = 0;
            while (i < MinButik.ListeAfCykler.Count)
            {
                Console.WriteLine(MinButik.ListeAfCykler[i].mærke);
                Console.WriteLine(MinButik.ListeAfCykler[i].hjulstørrelse);
                Console.WriteLine(MinButik.ListeAfCykler[i].farve);
                i++;
            }
        }
    }
}
