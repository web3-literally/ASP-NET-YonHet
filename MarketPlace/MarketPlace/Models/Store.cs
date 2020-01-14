using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MarketPlace.Models
{
    [Table("dbo.tb_Store")]
    public class Store
    {
        public int Id{ get; set; }
        public string StoreName{ get; set; }
        public string StoreLocation { get; set; }
        public string OwnerMail { get; set; }
        public string OwnerCellPhone { get; set; }
        public string OwnerName { get; set; }
        public string ImageUrl { get; set; }
        public string LinkUrl { get; set; }

    }
}