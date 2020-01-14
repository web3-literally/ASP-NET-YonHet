using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using MarketStore_2010.Models;
using System.IO;

namespace MarketStore_2010.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        private StoreContext db = new StoreContext();
        public ActionResult Index()
        {
            return View(db.Stores.ToList<Store>());
        }
        public ActionResult Delete()
        {
            db.Database.ExecuteSqlCommand("TRUNCATE TABLE tb_Store");
            return RedirectToAction("Register");
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
            try
            {
                String FileName = Path.GetFileNameWithoutExtension(RegModelValues.ImageFile.FileName);
                String FileExtension = Path.GetExtension(RegModelValues.ImageFile.FileName);
                FileName = DateTime.Now.ToString("yyyyMMdd") + "-" + FileName.Trim() + FileExtension;
                String UploadPath = ConfigurationManager.AppSettings["UserImagePath"].ToString();
                RegModelValues.ImageUrl = UploadPath + FileName;
                RegModelValues.ImageFile.SaveAs(RegModelValues.ImageUrl);
                RegModelValues.ImageUrl = "/UploadedFiles/" + FileName;

                Store Node = new Store
                {
                    OwnerMail = RegModelValues.OwnerMail,
                    LinkUrl = RegModelValues.LinkUrl,
                    StoreName = RegModelValues.StoreName,
                    StoreLocation = RegModelValues.StoreLocation,
                    ImageUrl = RegModelValues.ImageUrl
                };
                db.Stores.Add(Node);
                db.SaveChanges();
            } catch { }
            return RedirectToAction("Register");
        }
    }
}
