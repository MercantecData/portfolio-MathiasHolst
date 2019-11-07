using System;
using System.Collections.Generic;
using System.Text;

namespace OOP_Classes
{
    class Chair
    {
        public int Legs;
        public string color;
        public string material;

        public void description()
        {
            Console.WriteLine("This chair got " + Legs + " and it's made of " + material + ". The color of the chair is " + color);
        }

        public void moveChair()
        {
            Random rndnum = new Random();
            int flytStol = rndnum.Next(1, 6);
            switch(flytStol)
            {
                case 1: Console.WriteLine(" Chair");
                    break;
                case 2: Console.WriteLine("  Chair");
                    break;
                case 3: Console.WriteLine("   Chair");
                    break;
                case 4: Console.WriteLine("    Chair");
                    break;
                case 5: Console.WriteLine("     Chair");
                    break;
            }
        }

        public void flipChair()
        {
            Console.WriteLine("riahC");
        }

        public void ThrowChair()
        {
            Console.WriteLine("Chair");
            Console.WriteLine("Throwing....");
            System.Threading.Thread.Sleep(2000);
            Console.WriteLine("                                       Chair");
        }
    }
}
