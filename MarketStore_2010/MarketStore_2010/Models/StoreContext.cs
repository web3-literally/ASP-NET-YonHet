using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MarketStore_2010.Models
{
    public class StoreContext : DbContext
    {
        public StoreContext(){}
        public DbSet<Store> Stores { get; set; }
    }
}