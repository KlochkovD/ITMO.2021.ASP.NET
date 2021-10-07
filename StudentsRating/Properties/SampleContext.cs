using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;


namespace StudentsRating
{
    public class SampleContext : DbContext
    {
        public SampleContext()
        : base("DBSFinal")
        { }

        public DbSet<Students> Students { get; set; }
        


    }

}