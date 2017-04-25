using PCRM.Database.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleClient
{
    class Program
    {
        static void Main(string[] args)
        {
            using(var context = new PcrmContext())
            {
                context.Database.Log = Console.WriteLine;
                var employee = context.Employees.Find(1);
                Console.WriteLine(">>" + employee.firstname);
            }
        }
    }
}
