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

        public string LibaryBookStatus()
        {
            return "Total of " + numberOfBooks + " in the libary. And " + loanedOut + " is loaned out. " + stillAvailable + " are still available.";
        }

        public string ReturnBook(bool afleveret, string bookName)
        {
            afleveret = true;
            loanedOut -= 1;
            stillAvailable += 1;
            

            return bookName + " is now returned.";
        }

        public List<Book> newBook = new List<Book>();
    }
}
