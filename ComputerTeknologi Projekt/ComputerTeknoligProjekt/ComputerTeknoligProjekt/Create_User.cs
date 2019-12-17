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

        public void CheckForNumbersInName(string name)
        {
            int i = 0;
            while (i < name.Length)
            {
                Console.WriteLine(Char.IsDigit(name, i));
                if (Char.IsDigit(name, i) == true)
                {
                    Console.Write("Write your First-/Lastname without numbers: ");
                    name = Console.ReadLine();
                }
                i++;
            }
        }
        public void above18()
        {
            Console.ForegroundColor = ConsoleColor.Green;
        }
        public void below18()
        {
            Console.ForegroundColor = ConsoleColor.Blue;
        }
    }
}
