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
        public int debt;

        public Person(string fullName, int age, string city, string bookLoaned, int debt)
        {
            this.fullName = fullName;
            this.age = age;
            this.city = city;
            this.bookLoaned = bookLoaned;
            this.debt = debt;
        }

        public string Description()
        {
            return fullName + " loaned a book " + bookLoaned + " and lives in " + city + " this persons age is " + age;
        }
    }
}
