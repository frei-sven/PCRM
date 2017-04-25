using MySql.Data.Entity;
using PCRM.Database.Entities;
using System.Data.Entity;

namespace PCRM.Database.Context
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class PcrmContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
    }
}
