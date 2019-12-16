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
    }
}
