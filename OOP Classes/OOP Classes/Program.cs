using System;

namespace OOP_Classes
{
    class Program
    {
        static void Main(string[] args)
        {
            Chair minStol = new Chair();
            minStol.color = "Black";
            minStol.material = "Plastic";
            minStol.Legs = 2;

            Console.WriteLine("Chair description:");
            minStol.description();
            Console.WriteLine("Move Chair:");
            minStol.moveChair();
            Console.WriteLine("Flip chair:");
            minStol.flipChair();
            Console.WriteLine("Throw the chair:");
            minStol.ThrowChair();
            Console.WriteLine("--------------------------------------------------");

            Lamp minLampe = new Lamp();
            minLampe.color = "white";
            minLampe.shape = "Squared";
            minLampe.material = "plastic";
            minLampe.height = 15;
            minLampe.width = 15;

            Console.WriteLine("Lamp description:");
            minLampe.description();
            Console.WriteLine("Lamp turning off:");
            minLampe.TurnOff();
            Console.WriteLine("Lamp turning on:");
            minLampe.TurnOn();
        }
    }
}
