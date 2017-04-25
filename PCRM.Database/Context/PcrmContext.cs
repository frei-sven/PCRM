using MySql.Data.Entity;
using PCRM.Database.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCRM.Database.Context
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class PcrmContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
    }
}
