using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Laptop.Models;
namespace Laptop.Controllers
{
    public class _clientCustomerController : Controller
    {
        laptopDataContext db = new laptopDataContext();
        // GET: _clientCustomer
        public ActionResult AccountDetail()
        {
            int key = @Convert.ToInt32(Session["ID_cus"].ToString());
            var tb = (from c in db.Customers
                      where c.ID == key
                      select c).Take(1);
            return View(tb);
        }
        public ActionResult AccountEdit()
        {
            int key = @Convert.ToInt32(Session["ID_cus"].ToString());
            var tb = from c in db.Customers
                      where c.ID == key
                      select c;
            return View(tb);
        }
        [HttpPost]
        public ActionResult AccountEdit(Customer tk)
        {
            int key = @Convert.ToInt32(Session["ID_cus"].ToString());
            int phone = Convert.ToInt32(Request["phone"]);
            string gender = Request["gender"];
            string name = Request["name"];
            string add = Request["address"];
            tk = db.Customers.Where(m => m.ID == key).SingleOrDefault();
            if(tk!=null)
            { 
                tk.Name = name;
                tk.Gender = gender;
                tk.Address = add;
                tk.Phone_Number = phone;
                tk.Email = Session["email"].ToString();
                tk.Status = "Active";
                tk.updated_at = DateTime.Now;
                UpdateModel(tk);
                db.SubmitChanges();
            }
            return RedirectToAction("notification", "_clientCustomer");
        }
        public ActionResult notification()
        {
            var tb = from c in db.Customers
                     where c.ID == Convert.ToInt32(Session["ID_cus"])
                     select c;
            return View(tb);
        }
        [HttpPost]
        public ActionResult DoiMK(Customer tk)
        {
            int key = @Convert.ToInt32(Session["ID_cus"].ToString());
            string mkcu = Request["passcu"];
            string mkmoi = Request["passmoi2"];
            tk = db.Customers.Where(m => m.ID == key).SingleOrDefault();
            if (tk != null)
            {
                if (tk.Password == mkcu)
                {
                    tk.Password = mkmoi;
                    tk.updated_at = DateTime.Now;
                    UpdateModel(tk);
                    db.SubmitChanges();
                }
            }
            var tb = from c in db.Customers
                     where c.ID == Convert.ToInt32(Session["ID_cus"])
                     select c;
            return View(tb);
        }
    }
}