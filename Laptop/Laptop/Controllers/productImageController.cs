using System;
using PagedList;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Laptop.Models;

namespace Laptop.Controllers
{
    public class productImageController : Controller
    {
        laptopDataContext db = new laptopDataContext();
        // GET: imageProduct
        public ActionResult Index()
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "loginAdmin");
            }
            return View();
        }
        public ActionResult Image(int? page)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "loginAdmin");
            }
            var image = from p in db.Product_Images
                        select p;

            ViewBag.product = from b in db.Products
                              select b;
            ViewBag.image = (from p in db.Product_Images
                             orderby p.ID descending
                             select p).Take(3);
            return View(image.ToPagedList(page ?? 1, 5));
        }
        [HttpPost]
        public ActionResult Image(int? page, Product_Image iimgae)
        {

            var image = from p in db.Product_Images
                        select p;
            ViewBag.product = from b in db.Products
                              select b;
            ViewBag.image = (from p in db.Product_Images
                             orderby p.ID descending
                             select p).Take(3);
            Product test = db.Products.Where(p => p.ID == Convert.ToInt32(Request["ID_SP"])).FirstOrDefault();
            ViewBag.date = DateTime.Now;
            if (test == null)
            {
                ViewBag.test = "Sản phẩm có ID " + Request["ID_SP"] + " không tồn tại!";
            }
            else
            {
                iimgae.ID_Product = Convert.ToInt32(Request["ID_SP"]);
                iimgae.Image = Request["Anh"];
                iimgae.created_at = ViewBag.date;
                db.Product_Images.InsertOnSubmit(iimgae);
                db.SubmitChanges();
            }
            return View(image.ToPagedList(page ?? 1, 5));
        }
        public ActionResult Search(int? page)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "loginAdmin");
            }
            var image = from p in db.Product_Images
                        select p;
            ViewBag.product = from b in db.Products
                              select b;
            ViewBag.image = (from p in db.Product_Images
                             orderby p.ID descending
                             select p).Take(3);
            return View(image.ToPagedList(page ?? 1, 5));
        }
        [HttpPost]
        public ActionResult Search(int? page, Product_Image a)
        {
            int id = Convert.ToInt32(Request["key"]);
            /*var image = from p in db.Product_Images
                        select p;*/
            ViewBag.product = from b in db.Products
                              select b;
            ViewBag.image = (from p in db.Product_Images
                             orderby p.ID descending
                             select p).Take(3);
            var image = from p in db.Product_Images
                        where p.ID_Product == id
                        select p;
            return View(image.ToPagedList(page ?? 1, 5));
        }

        public ActionResult Delete_img(int id)
        {
            var img = db.Product_Images.Where(b => b.ID == id).SingleOrDefault();
            db.Product_Images.DeleteOnSubmit(img);
            db.SubmitChanges();
            return RedirectToAction("Image");
        }
    }
}