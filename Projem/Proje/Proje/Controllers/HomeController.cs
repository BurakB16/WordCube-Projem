using Proje.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proje.Controllers
{
    public class HomeController : Controller
    {
        public object FormDB { get; private set; }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Create()
        {
            return View();
        }
       
        [HttpPost]
        public ActionResult Create(FormCollection form)
        {
            FormDBEntities1 db = new FormDBEntities1();
            Kullanıcılar model = new Kullanıcılar();
            model.ad = form["ad"].Trim();
            model.soyad = form["soyad"].Trim();
            model.mail = form["mail"].Trim();
            model.kadi = form["kadi"].Trim();
            model.ksifre = form["ksifre"].Trim();
            db.Kullanıcılar.Add(model);
            db.SaveChanges();
            return View();
        }
    }
}