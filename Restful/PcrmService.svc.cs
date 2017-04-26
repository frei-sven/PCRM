using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using PCRM.Database;
using PCRM.Database.DataAccess;
using Restful.Entities;

namespace Restful
{
    public class PcrmService : IPcrmService
    {
        private PcrmDao _pcrmDao;

        public RestEmployee GetEmployee(int id)
        {
            _pcrmDao = new PcrmDao();
            return new RestEmployee(_pcrmDao.GetEmployee(id));
        }
    }
}
