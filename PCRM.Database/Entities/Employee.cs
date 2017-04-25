using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCRM.Database.Entities
{
    [Table("employee")]
    public class Employee
    {
        public int Id { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string department { get; set; }
        public int salary { get; set; }
    }
}
