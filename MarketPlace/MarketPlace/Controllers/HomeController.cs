using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MarketPlace.Models;

namespace MarketPlace.Controllers
{
    public class HomeController : Controller
    {
        private StoreContext db = new StoreContext();
        public ActionResult Index()
        {
            return View(db.Stores.ToList<Store>());
        }
        
        public ActionResult Register()
        {
            RegisterViewModel RegViewModel = new RegisterViewModel();
            RegViewModel.StoreList = db.Stores.ToList<Store>();
            return View(RegViewModel);
        }
        [HttpPost]
        public ActionResult Register(RegisterViewModel RegModelValues)
        {
            //File UpLoad
            String FileName = Path.GetFileNameWithoutExtension(RegModelValues.ImageFile.FileName);
            String FileExtension = Path.GetExtension(RegModelValues.ImageFile.FileName);
            FileName = DateTime.Now.ToString("yyyyMMdd") + "-" + FileName.Trim() + FileExtension;
            String UploadPath = ConfigurationManager.AppSettings["UserImagePath"].ToString();
            RegModelValues.ImageUrl = UploadPath + FileName;
            RegModelValues.ImageFile.SaveAs(RegModelValues.ImageUrl);
            RegModelValues.ImageUrl = "/UploadedFiles/" + FileName;

            Store Node = new Store { OwnerMail = RegModelValues.OwnerMail, LinkUrl = RegModelValues.LinkUrl,
                StoreName = RegModelValues.StoreName, StoreLocation = RegModelValues.StoreLocation,
                ImageUrl = RegModelValues.ImageUrl};
            db.Stores.Add(Node);
            db.SaveChanges();

            return RedirectToAction("Register");
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}