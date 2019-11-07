using System;
using System.Collections.Generic;

namespace Test
{
    class Program
    {
        static void Main(string[] args)
        {
            //LAVE 2 NYE PERSONER MED NAVN, ALDER, BY OG HVILKEN BOG DE LÅNER
            Person person1 = new Person("Mathias Holst", 16, "Viborg", "Harry Potter", 0);
            Person person2 = new Person("Kasper Grønne", 19, "Viborg", "Harry Potter", 0);

            if (person1.age < 18 && person1.bookLoaned != "")
            {
                Console.WriteLine("You are too young to borrow a book from the libary.");
            }
            else
            {
                person1.Description();
            }

            if (person2.age < 18 && person2.bookLoaned != "")
            {
                Console.WriteLine("You are too young to borrow a book from the libary.");
            }
            else
            {
                person2.Description();
            }

            Console.WriteLine();
            person1.age = 21;
            person1.fullName = "Mathias F Holst";
            person2.bookLoaned = "Lord of the rings";

            person1.Description();
            person2.Description();
            Console.WriteLine();

            //LAVE 1 LISTE MED BØGER
            List<Book> newBook = new List<Book>();

            //LAVE 2 BØGER MED TITEL LÅNETID OG OM DE ER TILGÆNGELIGE
            Book firstBook = new Book("Harry Potter", 21, false);
            Book secondBook = new Book("Guinness record 2012", 365, false);

            //UNUSED
            Book[] allBooks = new Book[2];
            allBooks[0] = firstBook;
            allBooks[1] = secondBook;



            //GEM BØGERENES DATA I EN LISTE
            newBook.Add(firstBook);
            newBook.Add(secondBook);
            
            Console.Write(person1.fullName + "'s book titel is: ");
            Console.WriteLine(newBook[0].titel);
            Console.Write(person2.fullName + "'s book titel is: ");
            Console.WriteLine(newBook[1].titel);

            Console.WriteLine();
            Console.WriteLine("21 days later!");
            Console.WriteLine();

            //BOGEN AFLEVERET TILBAGE
            firstBook.tilgængelig = true;

            Console.WriteLine(newBook[0].tilgængelig);
            Console.WriteLine("Den er nu afleveret tilbage og kan nu lånes af en ny.");

            Console.WriteLine("Kasper vil gerne ændre sin lånetid til 2 år i stedet for 1.");
            secondBook.lånetidIDage = 730;
            Console.WriteLine("Kasper's bog's lånetid er nu sat til: " + newBook[1].lånetidIDage + " Dage" +
                "");

            //731 DAGE SENERE!
            void dageGåetFirstBook(int DaysGoneBy)
            {
                firstBook.lånetidIDage -= DaysGoneBy;
            }
            void dageGåetSecondBook(int DaysGoneBy)
            {
                secondBook.lånetidIDage -= DaysGoneBy;
            }
            dageGåetSecondBook(731);
            Console.WriteLine(person2.bookLoaned + " has " + secondBook.lånetidIDage + " days back to be delivered.");


            //IF STATEMENT THAT RUNS IF THE EXPIRE DATE RUNS OUT
            if (firstBook.lånetidIDage < 1 && firstBook.tilgængelig == false)
            {
                Console.WriteLine(person1.fullName + " lent the book " + person1.bookLoaned + " and the borrow time has expired!");
                person1.debt += 100;
                Console.WriteLine(person1.fullName + " now owes the library " + person1.debt + "$.");

            }
            if (secondBook.lånetidIDage < 1 && secondBook.tilgængelig == false)
            {
                Console.WriteLine(person2.fullName + " lent the book " + person2.bookLoaned + " and the borrow time has expired!");
                person2.debt += 100;
                Console.WriteLine(person2.fullName + " now owes the library " + person2.debt + "$.");
            }
        }
    }
}
