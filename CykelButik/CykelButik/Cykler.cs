using System;
using System.Collections.Generic;
using System.Text;

namespace CykelButik
{
    class Cykler
    {
        public string mærke;
        public double hjulstørrelse;
        public string farve;

        public Cykler(string mærke, double hjulstørrelse, string farve)
        {
            this.mærke = mærke;
            this.hjulstørrelse = hjulstørrelse;
            this.farve = farve;
        }
    }
}
