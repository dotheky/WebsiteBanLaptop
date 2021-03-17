using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Laptop.Models;

namespace Laptop.Controllers
{
    public class loginAdminController : Controller
    {
        laptopDataContext db = new laptopDataContext();
        // GET: loginAdmin
        public ActionResult Index()
        {            
            if(Session["admin"]!=null)
            {
                return RedirectToAction("Index", "test");
            }
            else
            return View();
        }
        [HttpPost]
        public ActionResult Index(Admin tk)
        {
            
            string email = Request["Email"];
            string password = Request["PassWord"];
            tk = db.Admins.Where(m => m.Email == email && m.Password == password).SingleOrDefault();
            if (tk != null)
            {
                Session["admin"] = tk;
                Session["name"] = tk.Name;
                return RedirectToAction("Index", "test");
            }
            else
                /*return RedirectToAction("Xuly", "loginAdmin");*/
                ViewBag.error = "Email hoặc Password sai!";
            var dn = from a in db.Admins
                     where a.Email.Equals(email) && a.Password.Equals(password)
                     select a;
            ViewBag.dn = dn;
            return this.Index();
        }
        public ActionResult login()
        {
            Session["admin"] = null;
            Session["name"] = null;
            return View();            
        }

    }
}