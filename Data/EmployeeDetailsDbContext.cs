using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using EmployeeDetails.Models;

namespace EmployeeDetails.Data
{
    public class EmployeeDetailsDbContext : DbContext
    {
        public EmployeeDetailsDbContext (DbContextOptions<EmployeeDetailsDbContext> options)
            : base(options)
        {
        }

        public DbSet<EmployeeDetails.Models.Emp> Emp { get; set; }
    }
}
