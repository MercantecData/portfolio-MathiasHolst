using System;

namespace ComputerTeknoligProjekt
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            Console.Write("Firstname: ");
            string first_Name = Console.ReadLine();
            Console.Write("Lastname: ");
            string last_Name = Console.ReadLine();
            Console.Write("Age: ");
            int age = int.Parse(Console.ReadLine());
            Console.Write("Address: ");
            string address = Console.ReadLine();
            Console.Write("Postalcode: ");
            int zipcode = int.Parse(Console.ReadLine());

            Console.WriteLine("Everything that showed up true is a number in your name which you now need to change");

            //Tjekker om din alder er over 100 og hvis den er det så skal du ændre den
            while (age > 100)
            {
                Console.WriteLine("You are too old to create an account on this application pls write your real age.");
                Console.Write("Age: ");
                age = int.Parse(Console.ReadLine());
            }
            Console.WriteLine("User created");
            Create_User user1 = new Create_User(first_Name, last_Name, age, address, zipcode);

            //Prøver at gøre sådan man ikke kan skrive tal i sit navn
            Console.WriteLine("Press enter to check firstname for integers");
            Console.ReadLine();
            user1.CheckForNumbersInName(first_Name);

            Console.WriteLine("Press enter to check lastname for integers");
            Console.ReadLine();
            user1.CheckForNumbersInName(user1.last_Name);
            

            Console.WriteLine($"{user1.first_Name} {user1.last_Name} {age} yr");

            //De 2 forskellige interfaces for en person over eller under 18
            if (user1.age >= 18)
            {
                user1.above18();
                int adultID = 1000;
                while (adultID > 999) {
                    Console.Write("If my calculations are right you should be at a age 18 or above \nso pls right your first 3-digits in your id: ");
                    adultID = int.Parse(Console.ReadLine());
                    if (adultID > 999)
                    {
                        Console.WriteLine("You should only write the first 3-digits in your id no more than that (Press enter to try again)");
                        Console.ReadLine();
                        Console.Clear();
                    }
                    Console.WriteLine(adultID);
                }
                above18 user1above18 = new above18(adultID);
            } else if (user1.age < 18)
            {
                user1.below18();
                int parentID = 1000;
                while (parentID > 999)
                {
                    Console.Write($"If my calculations are right you should be at a age below 18 \nso pls right your moms/dads first 3-digits in their id: ");
                    parentID = int.Parse(Console.ReadLine());
                    below18 user1below18 = new below18(parentID);
                    if (parentID > 999)
                    {
                        Console.WriteLine("You should only write the first 3-digits in your id no more than that (Press enter to try again)");
                        Console.ReadLine();
                        Console.Clear();
                    }
                    Console.WriteLine(parentID);
                }
            }
        }

    }
}
