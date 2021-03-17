using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Laptop.Models;
using PagedList;
namespace Laptop.Controllers
{
    public class _clientProductDetailController : Controller
    {
        laptopDataContext db = new laptopDataContext();
        // GET: _clientProductDetail
       
        public ActionResult Index()
        {
            int key = Convert.ToInt32( Request["key"]);
            ViewBag.ctsp = (from b in db.Products
                            where b.ID == key
                            orderby b.ID descending
                            select b).Take(4);
            ViewBag.ID_pro = (from p in db.Products
                             where p.ID == key
                             select new SoLuong
                             {
                                 ID_Product_Color = (int)p.ID,
                             }); 
            ViewBag.color = from p in db.Products
                            join pro_co in db.Product_Colors on p.ID equals (pro_co.ID_Product)
                            join co in db.Colorrs on pro_co.ID_Color equals (co.ID)
                            where p.ID == key
                            select new SoLuong
                            {
                                Quantity = (int)pro_co.Quantity,
                                Color = co.Color,
                                ID_Product_Color = (int)pro_co.ID, 
                                Image = co.Image
                            };
            ViewBag.count = (from p in db.Products
                            join pro_co in db.Product_Colors on p.ID equals (pro_co.ID_Product)
                            join co in db.Colorrs on pro_co.ID_Color equals (co.ID)
                            where p.ID == key
                            select new SoLuong
                            {
                                Quantity = (int)pro_co.Quantity,
                                Color = co.Color,
                                Image = co.Image
                            }).Count();
            return View();
        }
        public ActionResult product(int? page)
        {
            var product = from b in db.Products
                            orderby b.ID descending
                            select b;
            string brand = Request["brand"];
            ViewBag.brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals(br.ID)
                            where br.Name == brand
                            select b;
            return View(product.ToPagedList(page ?? 1, 20));
        }
        [HttpPost]
        public ActionResult product(int? page,FormCollection data)
        {
            
            string key = Request["key"];
            ViewBag.TK = "Có ";
            ViewBag.TK1=" sản phẩm trùng với: " + key;
            var product = from b in db.Products
                          where b.Name.Contains(key)
                          select b;
            ViewBag.count = (from b in db.Products
                          where b.Name.Contains(key)
                          select b).Count();
            
            return View(product.ToPagedList(page ?? 1, 20));
        }
        public ActionResult brand(int? page, string sortOrder)
        {                     
            string bran = Request["brand"];
            Session["brand"] = Request["brand"];
            ViewBag.tb = "Sản phẩm hãng " + bran; 

            var brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == bran
                            select b;
            ViewBag.count= (from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == bran
                            select b).Count();

            ViewBag.SapTheoGia = sortOrder == "Gia" ? "Gia" : "Gia";
            switch (sortOrder)
            {
                case "Gia":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == Convert.ToString(Session["brand"]) && b.Promotion_Price<=20000
                            select b;
                    break;
                default:                    
                    break;
            }
            return View(brand.ToPagedList(page ?? 1, 20));
        }
        public ActionResult Dell(int? page, string sortOrder)
        {
            ViewBag.tb = "Sản phẩm hãng " + "Dell";

            var brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell"
                            select b;
            ViewBag.count= (from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell"
                            select b).Count();
            ViewBag.g15 = sortOrder == "15tr" ? "15tr" : "15tr";
            ViewBag.g1520 = sortOrder == "15-20tr" ? "15-20tr" : "15-20tr";
            ViewBag.g2025 = sortOrder == "20-25tr" ? "20-25tr" : "20-25tr";
            ViewBag.g2530 = sortOrder == "25-30tr" ? "25-30tr" : "25-30tr";
            ViewBag.g30 = sortOrder == "30tr" ? "30tr" : "30tr";
            ViewBag.I5 = sortOrder == "I5" ? "I5" : "I5";
            ViewBag.I7 = sortOrder == "I7" ? "I7" : "I7";
            switch (sortOrder)
            {
                case "15tr":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell" && b.Promotion_Price< 15000000
                            select b;
                    break;
                case "15-20tr":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell" && b.Promotion_Price>= 15000000 && b.Promotion_Price <= 20000000
                            select b;
                    break;
                case "20-25tr":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell" && b.Promotion_Price> 20000000 && b.Promotion_Price <= 25000000
                            select b;
                    break;
                case "25-30tr":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell" && b.Promotion_Price> 25000000 && b.Promotion_Price <= 30000000
                            select b;
                    break;
                case "30tr":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell" && b.Promotion_Price> 30000000
                            select b;
                    break;
                case "I5":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell" && b.CPU.Contains("i5")
                            select b;
                    break;
                case "I7":
                    brand = from b in db.Products
                            join br in db.Brands on b.ID_Brand equals (br.ID)
                            where br.Name == "Dell" && b.CPU.Contains("i7")
                            select b;
                    break;
                default:                    
                    break;
            }
            return View(brand.ToPagedList(page ?? 1, 20));
        }
        public ActionResult phanloai(int? page)
        {            
            string grou = Request["group"];
            ViewBag.tb = " sản phẩm: " + grou + "!";
            var gro = from p in db.Products
                      where p.Group_Pro == grou
                      select p;
            ViewBag.count = (from p in db.Products
                      where p.Group_Pro == grou
                      select p).Count();
            return View(gro.ToPagedList(page ?? 1, 20));
        }
    }
}