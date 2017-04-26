using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebClient.Helper
{
    using Models;
    /// <summary>
    /// Fake repository to emulate database
    /// </summary>
    public class EmployeeRepository
    {
        private static List<Employee> _employees = new List<Employee>()
        {
            new Employee(){Id = 1, Department = "WILC", Firstname = "Lou", Lastname="Bahnhof", Salary=11},
            new Employee(){Id = 2, Department = "A", Firstname = "L", Lastname="B", Salary=69}
        };

        public static List<Employee> GetAll()
        {
            return _employees;
        }

        public static Employee GetById(int id)
        {
            return _employees.Single(e => e.Id == id);
        }
    }
}