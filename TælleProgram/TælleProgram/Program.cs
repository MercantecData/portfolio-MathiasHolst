using System;

namespace TælleProgram
{
    class Program
    {
        static void Main(string[] args)
        {
            int arraySize = int.Parse(Console.ReadLine());
            int[] Mitarray = new int[arraySize];
            int o = 0;

            while (o < Mitarray.Length)
            {
                Console.WriteLine(o);
                o++;
                if (o == arraySize)
                {
                    Console.WriteLine(o);
                }
            }
        }
    }
}
