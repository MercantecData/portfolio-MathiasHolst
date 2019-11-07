using System;
using System.Collections.Generic;
using System.Text;

namespace Test
{
    class Book
    {
        public string titel;
        public int lånetidIDage;
        public bool tilgængelig;

        public Book(string titel, int lånetidIDage, bool tilgængelig)
        {
            this.titel = titel;
            this.lånetidIDage = lånetidIDage;
            this.tilgængelig = tilgængelig;
        }

    }
}
