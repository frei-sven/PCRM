using PCRM.Database.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PCRM.Database.DataAccess
{
    interface IPcrmDao
    {
        Employee GetEmployee(int id); 
    }
}
