using Restful.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Restful
{
    [ServiceContract]
    public interface IPcrmService
    {
        [WebGet(UriTemplate = "employee/{id}")]
        [OperationContract]
        RestEmployee GetEmployee(int id);
    }
}
