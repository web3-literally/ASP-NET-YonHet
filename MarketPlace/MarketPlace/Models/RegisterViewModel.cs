using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MarketPlace.Models
{
    public class RegisterViewModel
    {
        public int Id { get; set; }
        public string StoreName { get; set; }
        public string StoreLocation { get; set; }
        public string OwnerMail { get; set; }
        public string OwnerCellPhone { get; set; }
        public string OwnerName { get; set; }
        public string ImageUrl { get; set; }
        public string LinkUrl { get; set; }
        public HttpPostedFileBase ImageFile { get; set; }
        public IEnumerable<MarketPlace.Models.Store> StoreList { get; set; }
    }
}