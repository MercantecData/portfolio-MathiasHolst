using System;
using System.Collections.Generic;
using System.Text;

namespace Test
{
    class Person
    {
        public string fullName;
        public int age;
        public string city;
        public string bookLoaned;

        public Person(string fullName, int age, string city, string bookLoaned)
        {
            this.fullName = fullName;
            this.age = age;
            this.city = city;
            this.bookLoaned = bookLoaned;
        }

        public void description()
        {
            Console.WriteLine(fullName + " loaned a book " + bookLoaned + " and lives in " + city + " this persons age is " + age);
        }
    }
}
