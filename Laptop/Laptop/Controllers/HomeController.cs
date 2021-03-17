using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Laptop.Models;

namespace Laptop.Controllers
{
    public class HomeController : Controller
    {
        laptopDataContext db = new laptopDataContext();
        public ActionResult Index(string sortOrder)
        {
            ViewBag.product = (from b in db.Products
                               orderby b.ID descending
                              select b).Take(4);
            ViewBag.htvp = (from b in db.Products
                            where b.Group_Pro == "Học tập - Văn phòng"
                            orderby b.ID descending
                              select b).Take(4);
            ViewBag.ccst = (from b in db.Products
                            where b.Group_Pro == "Cao cấp - Sang trọng"
                            orderby b.ID descending
                              select b).Take(4);
            ViewBag.dhkt = (from b in db.Products
                            where b.Group_Pro == "Đồ họa - Kỹ thuật"
                            orderby b.ID descending
                              select b).Take(4);
            ViewBag.gaming = (from b in db.Products
                              where b.Group_Pro=="Laptop Gaming"
                               orderby b.ID descending
                              select b).Take(4);
            ViewBag.SapTheoGia = sortOrder == "Gia" ? "Gia" : "Gia";
            switch (sortOrder)
            {
                case "Gia":
                    ViewBag.htvp = (from b in db.Products
                                    where b.Group_Pro == "Học tập - Văn phòng"
                                   && b.Promotion_Price<=20000
                                    select b).Take(4);
                    break;
                default:
                    break;
            }
            return View();
        }
        public ActionResult layout()
        {
            return View();
        }

        
    }
}