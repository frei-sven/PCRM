using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCRM.Database.Entities
{
    public class Employee
    {
        public int Id { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string department { get; set; }
        public int salary { get; set; }
    }
}
