using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ideal.ViewModels;
using ideal.Repository;
using ideal.Helper;

namespace ideal.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginViewModel model)
        {
            var user = CheckLogin(model);
            if(user != null)
            {
                var userSession = new UserViewModel();
                userSession.Username = user.Username;
                Session.Add(Constants.USER_SESSION,userSession);
                return Json(new { result = "OK", message = "/Admin/Home/Index" });
            }
            return Json(new { result = "Error", message = "Login ID & Password is incorrect!" });
        }

        private UserViewModel CheckLogin(LoginViewModel model)
        {
            var rep = new UserRepository();

            model.Password = ED5Helper.Encrypt(model.Password);
            var res = new UserRepository();
            return res.Login(model);
        }
    }
}