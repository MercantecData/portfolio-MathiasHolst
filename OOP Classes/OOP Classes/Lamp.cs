using System;
using System.Collections.Generic;
using System.Text;

namespace OOP_Classes
{
    class Lamp
    {
        public string color;
        public string shape;
        public int height;
        public int width;
        public string material;

        public void description()
        {
            Console.WriteLine("The lamps color is " + color + " and the shape of the lamp is " + shape + ". The height of the lamp is " + height + " the width is " + width + ". The lamp is made of " + material);
        }

        public void TurnOff()
        {
            Console.WriteLine("Lamp");
            System.Threading.Thread.Sleep(2000);
            Console.ForegroundColor = ConsoleColor.DarkGray;
            Console.WriteLine("Lamp");
            System.Threading.Thread.Sleep(2000);
            Console.ForegroundColor = ConsoleColor.Black;
            Console.WriteLine("Lamp");
            Console.ForegroundColor = ConsoleColor.Gray;
        }

        public void TurnOn()
        {
            Console.ForegroundColor = ConsoleColor.Black;
            Console.WriteLine("Lamp");
            System.Threading.Thread.Sleep(2000);
            Console.ForegroundColor = ConsoleColor.DarkGray;
            Console.WriteLine("Lamp");
            System.Threading.Thread.Sleep(2000);
            Console.ForegroundColor = ConsoleColor.Gray;
            Console.WriteLine("Lamp");
        }
    }
}
