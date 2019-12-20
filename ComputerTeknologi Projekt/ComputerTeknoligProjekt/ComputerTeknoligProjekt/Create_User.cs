using System;
using System.Collections.Generic;
using System.Text;

namespace ComputerTeknoligProjekt
{
    class Create_User
    {
        public string first_Name;
        public string last_Name;
        public int age;
        public string address;
        public int zipcode;

        public Create_User(string first_Name, string last_Name, int age, string address, int zipcode)
        {
            this.first_Name = first_Name;
            this.last_Name = last_Name;
            this.age = age;
            this.address = address;
            this.zipcode = zipcode;
        }
        
     
        public void above18()
        {
            Console.ForegroundColor = ConsoleColor.Red;
        }
        public void below18()
        {
            Console.ForegroundColor = ConsoleColor.Blue;
        }

        public void d()
        {
            Console.ForegroundColor = ConsoleColor.Gray;
        }

        public void Create()
        {
            Console.WriteLine("Everything that showed up true is a number in your name which you now need to change");

            //Tjekker om din alder er over 100 og hvis den er det så skal du ændre den
            while (age > 100)
            {
                Console.WriteLine("You are too old to create an account on this application pls write your real age.");
                Console.Write("Age: ");
                try
                {
                    age = int.Parse(Console.ReadLine());
                } catch (Exception) { 
                }
            }
            Create_User user1 = new Create_User(first_Name, last_Name, age, address, zipcode);

            //Gør sådan man ikke kan skrive tal i sit navn
            Console.WriteLine("Press enter to check firstname for integers");
            Console.ReadLine();
            //Tjekker for numre i dit fornavn
            int i = 0;
            while (i < first_Name.Length)
            {
                Console.WriteLine(Char.IsDigit(first_Name, i));
                if (Char.IsDigit(first_Name, i) == true)
                {
                    Console.Write("Write your First-/Lastname without numbers: ");
                    first_Name = Console.ReadLine();
                }
                i++;
            }

            Console.WriteLine("Press enter to check lastname for integers");
            Console.ReadLine();
            //Tjekker for numre i dit efternavn
            i = 0;
            while (i < last_Name.Length)
            {
                Console.WriteLine(Char.IsDigit(last_Name, i));
                if (Char.IsDigit(last_Name, i) == true)
                {
                    Console.Write("Write your First-/Lastname without numbers: ");
                    last_Name = Console.ReadLine();
                }
                i++;
            }
            Console.WriteLine($"{first_Name} {last_Name} {age} yr");

            //De 2 forskellige interfaces for en person over eller under 18
            //Du kan kun skrive 3 cifre i dit id og age værdien er 18 eller højere
            if (user1.age >= 18)
            {
                user1.above18();
                int adultID = 1000;
                while (adultID > 999)
                {
                    Console.Write("If my calculations are right you should be at a age 18 or above \nso pls right your first 3-digits in your id: ");
                    try
                    {
                        adultID = int.Parse(Console.ReadLine());
                    } catch (Exception)
                    {
                        Console.WriteLine("Write numbers not letters");
                        adultID = int.Parse(Console.ReadLine());
                    }
                    if (adultID > 999)
                    {
                        Console.WriteLine("You should only write the first 3-digits in your id no more than that (Press enter to try again)");
                        Console.ReadLine();
                        Console.Clear();
                    }
                    Console.WriteLine(adultID);
                }
                above18 user1above18 = new above18(adultID);
                Console.Write("Write quit if you created all users you want to: ");
            }
            //Du kan kun skrive 3 cifre i dit id hvis age værdien er under 18
            else if (user1.age < 18)
            {
                user1.below18();
                int parentID = 1000;
                while (parentID > 999)
                {
                    Console.Write($"If my calculations are right you should be at a age below 18 \nso pls right your moms/dads first 3-digits in their id: ");
                    try
                    {
                        parentID = int.Parse(Console.ReadLine());
                    } catch (Exception)
                    {
                        Console.WriteLine("Write numbers not letters");
                        parentID = int.Parse(Console.ReadLine());
                    }
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
            Console.WriteLine("User created");
        }
    }
}
