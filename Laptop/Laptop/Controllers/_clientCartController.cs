using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Laptop.Models;
namespace Laptop.Controllers
{
    public class _clientCartController : Controller
    {
        laptopDataContext db = new laptopDataContext();
        // GET: _clientCart
        public ActionResult Index()
        {
            if (Session["user"] == null)
            {
                ViewBag.Cart = null;
            }
            else
            {
                ViewBag.Cart = from c in db.Carts
                               join pr in db.Product_Colors on c.ID_Product_Color equals pr.ID
                               join pro in db.Products on pr.ID_Product equals pro.ID
                               join co in db.Colorrs on pr.ID_Color equals co.ID
                               where c.ID_Customer.Equals(Session["ID_cus"])
                               orderby c.created_at descending
                               select new GioHang
                               {
                                   Image = pro.Image,
                                   Name = pro.Name,
                                   Color= co.Color,
                                   Price = (int)pro.Promotion_Price,
                                   ID = (int)c.ID,
                                   ID_pro = (int)pro.ID,
                                   Quantity_Purchased = (int)c.Quantity_Purchased,
                                   Quantity = (int)pr.Quantity,
                                   Total_Price = (int)pro.Price * (int)c.Quantity_Purchased
                               };
            }
            return View();
        }
        public ActionResult Add_To_Card(Cart ca)
        {            
            
            int key= Convert.ToInt32(Request["key"]);
            ViewBag.date = DateTime.Now;
            Cart c = db.Carts.Where(a => a.ID_Product_Color==key).SingleOrDefault();
            if (Session["user"]==null)
            {
                ViewBag.test = "Bạn cần đăng nhập!";
            }
            else if(c != null)
            {                
                c.Quantity_Purchased = c.Quantity_Purchased+1;
                c.created_at = ViewBag.date;
                UpdateModel(c);
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            else
            {                
                ca.ID_Product_Color= key;
                ca.ID_Customer = Convert.ToInt32(Session["ID_cus"]);
                ca.Quantity_Purchased = 1;
                ca.created_at = ViewBag.date;
                db.Carts.InsertOnSubmit(ca);
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            return View();
        }
        public ActionResult Delete(Cart ca)
        {
            int key = Convert.ToInt32(Request["key"]);
            ca = db.Carts.Where(c => c.ID == key).SingleOrDefault();
            db.Carts.DeleteOnSubmit(ca);
            db.SubmitChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Update()
        {
            return View();
        }
            [HttpPost]
        public ActionResult Update(Cart c,int id)
        {
            var ca = from a in db.Carts
                     select a.ID;
            foreach (var item in ca)
            {
                c = db.Carts.Where(p => p.ID == id).SingleOrDefault();
                int update = Convert.ToInt32(Request["quan"]);
                ViewBag.date = DateTime.Now;
                c.Quantity_Purchased = update + 1;
                UpdateModel(c);
                db.SubmitChanges();
            }
            return RedirectToAction("Index");
        }
        public ActionResult Updatet()
        {
            return View();
        }
            [HttpPost]
        public ActionResult Updatet(Cart c,int id)
        {
            var ca = from a in db.Carts
                     select a.ID;
            foreach (var item in ca)
            {
                c = db.Carts.Where(p => p.ID == id).SingleOrDefault();
                int update = Convert.ToInt32(Request["quan"]);
                ViewBag.date = DateTime.Now;
                c.Quantity_Purchased = update - 1;
                UpdateModel(c);
                db.SubmitChanges();
            }
            return RedirectToAction("Index");
        }
        public ActionResult pay()
        {
            return View();
        }
        [HttpPost]
        public ActionResult pay(Product pro, int id)
        {
            pro = db.Products.Where(m => m.ID == id).SingleOrDefault();
            ViewBag.color = from pr in db.Products
                            join pr_co in db.Product_Colors on pr.ID equals pr_co.ID_Product
                            join co in db.Colorrs on pr_co.ID_Color equals co.ID
                            where pr_co.ID == Convert.ToInt32(Request["Pro_Color"])
                            select new client_bill
                            {
                                Pro_Color = co.Color,
                            };
            Session["sdt"] = Convert.ToInt32(Request["phone"]);
            Session["add"] = Request["add"];
            Session["image"] = pro.Image;
            Session["pro_name"] = pro.Name;
            Session["color"] = Request["Pro_Color"];
            Session["quan"] = Request["quan"];
            Session["price"] = pro.Promotion_Price;
            return View();
        }
    }
}