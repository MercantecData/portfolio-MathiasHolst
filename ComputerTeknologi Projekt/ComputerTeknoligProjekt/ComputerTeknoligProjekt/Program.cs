using System;

namespace ComputerTeknoligProjekt
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            Console.Write("Fornavn: ");
            string first_Name = Console.ReadLine();
            Console.Write("Efternavn: ");
            string last_Name = Console.ReadLine();
            Console.Write("Alder: ");
            int age = int.Parse(Console.ReadLine());
            Console.Write("Addresse: ");
            string address = Console.ReadLine();
            Console.Write("Postnummer: ");
            int zipcode = int.Parse(Console.ReadLine());

            if(age > 100)
            {
                Console.WriteLine("You are too old to create an account on this application");
                return;
            }
            Console.Clear();
            Console.WriteLine("Bruger oprettet");
            Create_User user1 = new Create_User(first_Name, last_Name, age, address, zipcode);

            Console.WriteLine($"{user1.first_Name} {last_Name} {age} år gammel");
            Console.Clear();

            if (user1.age >= 18)
            {
                above18();
            } else if (user1.age < 18)
            {
                below18();
            }

            Console.WriteLine("asdsadsadsadasasdsads");
            Console.WriteLine("sadsadsadsadsadsadsad");
        }

        static void above18()
        {
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.BackgroundColor = ConsoleColor.DarkRed;
        }

        static void below18()
        {
            Console.ForegroundColor = ConsoleColor.Black;
            Console.BackgroundColor = ConsoleColor.DarkGray;
        }
    }
}
