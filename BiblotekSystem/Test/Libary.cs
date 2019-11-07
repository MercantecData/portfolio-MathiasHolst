using System;
using System.Collections.Generic;
using System.Text;

namespace Test
{
    class Libary
    {
        public int numberOfBooks;
        public int loanedOut;
        public int stillAvailable;

        public Libary(int numberOfBooks, int loanedOut, int stillAvailable)
        {
            this.numberOfBooks = numberOfBooks;
            this.loanedOut = loanedOut;
            this.stillAvailable = stillAvailable;
        }

        public void LibaryBookStatus()
        {
            Console.WriteLine("Total of " + numberOfBooks + " in the libary. And " + loanedOut + " is loaned out. " + stillAvailable + " are still available.");
        }

        public void ReturnBook(bool afleveret, string bookName)
        {
            afleveret = true;
            loanedOut -= 1;
            stillAvailable += 1;
            

            Console.WriteLine(bookName + " is now returned.");
        }
    }
}
