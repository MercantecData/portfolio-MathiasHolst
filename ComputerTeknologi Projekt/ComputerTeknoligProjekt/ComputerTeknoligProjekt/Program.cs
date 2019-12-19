using System;
using System.Collections.Generic;

namespace ComputerTeknoligProjekt
{
    class Program
    {
        static void Main(string[] args)
        {
            //Laver en liste hvor users kan sættes i
            List<Create_User> newList = new List<Create_User>();

            //Oprettelse af user1
            Console.Write("Firstname: ");
            string first_Name = Console.ReadLine();
            Console.Write("Lastname: ");
            string last_Name = Console.ReadLine();
            Console.Write("Age: ");
            int age = 0;
            try
            {
                age = int.Parse(Console.ReadLine());
            }
            catch (Exception) { 
                Console.WriteLine("Write numbers not letters");
                age = int.Parse(Console.ReadLine());
            }
            Console.Write("Address: ");
            string address = Console.ReadLine();
            Console.Write("Postalcode: ");
            int zipcode = 0;
            try
            {
                zipcode = int.Parse(Console.ReadLine());
            } catch (Exception)
            {
                Console.WriteLine("Write numbers not letters");
                zipcode = int.Parse(Console.ReadLine());
            }

            Create_User user1 = new Create_User(first_Name, last_Name, age, address, zipcode);

            user1.Create();
            user1.d();
            newList.Add(user1);
            Console.Clear();

            //Forhindre oprettelse af user2
            Console.WriteLine($"Write {"stop"} to stop creating more users.");
            string stop = Console.ReadLine().Trim().ToLower();

            if (stop != "stop")
            {
                //Oprettelse af user2
                Console.Write("Firstname: ");
                first_Name = Console.ReadLine();
                Console.Write("Lastname: ");
                last_Name = Console.ReadLine();
                Console.Write("Age: ");
                try
                {
                    age = int.Parse(Console.ReadLine());
                }
                catch (Exception)
                {
                    Console.WriteLine("Write numbers not letters");
                    age = int.Parse(Console.ReadLine());
                }
                Console.Write("Address: ");
                address = Console.ReadLine();
                Console.Write("Postalcode: ");
                try
                {
                    zipcode = int.Parse(Console.ReadLine());
                }
                catch (Exception)
                {
                    Console.WriteLine("Write numbers not letters");
                    zipcode = int.Parse(Console.ReadLine());
                }


                Create_User user2 = new Create_User(first_Name, last_Name, age, address, zipcode);

                user2.Create();
                user2.d();
                newList.Add(user2);
                Console.Clear();

                //Forhindre oprettelse af user3
                Console.WriteLine($"Write {"stop"} to stop creating more users");
                stop = Console.ReadLine().Trim().ToLower();

                if (stop != "stop")
                {
                    //Oprettelse af user3
                    Console.Write("Firstname: ");
                    first_Name = Console.ReadLine();
                    Console.Write("Lastname: ");
                    last_Name = Console.ReadLine();
                    Console.Write("Age: ");
                    try
                    {
                        age = int.Parse(Console.ReadLine());
                    }
                    catch (Exception)
                    {
                        Console.WriteLine("Write numbers not letters");
                        age = int.Parse(Console.ReadLine());
                    }
                    Console.Write("Address: ");
                    address = Console.ReadLine();
                    Console.Write("Postalcode: ");
                    try
                    {
                        zipcode = int.Parse(Console.ReadLine());
                    }
                    catch (Exception)
                    {
                        Console.WriteLine("Write numbers not letters");
                        zipcode = int.Parse(Console.ReadLine());
                    }

                    Create_User user3 = new Create_User(first_Name, last_Name, age, address, zipcode);

                    user3.Create();
                    user3.d();
                    newList.Add(user3);
                    Console.Clear();
                }
            }

            //Brugere oprettet i systemet
            Console.WriteLine("User's in the system");
            Console.WriteLine("---------------------");
            Console.WriteLine($" - {newList[0].first_Name} {newList[0].last_Name}");
            try
            {
                Console.WriteLine($" - {newList[1].first_Name} {newList[1].last_Name}");
            }
            catch (Exception) { }
            try
            {
                Console.WriteLine($" - {newList[2].first_Name} {newList[2].last_Name}");
            }
            catch (Exception) { }
            Console.ReadLine();

            //Relations tjek hvor der tages højde for antallet af users oprettet
            try
            {
                if (newList[0].address == newList[1].address || newList[0].last_Name == newList[1].last_Name)
                {
                    Console.WriteLine($"{newList[0].first_Name} may have relations with {newList[1].first_Name}");
                }
            } catch (Exception) { }
            try
            {
                if (newList[0].address == newList[2].address || newList[0].last_Name == newList[2].last_Name)
                {
                    Console.WriteLine($"{newList[0].first_Name} may have relations with {newList[2].first_Name}");
                }
                if (newList[1].address == newList[2].address || newList[1].last_Name == newList[2].last_Name)
                {
                    Console.WriteLine($"{newList[1].first_Name} may have relations with {newList[2].first_Name}");
                }
            } catch (Exception) { }
        }
    }
}
