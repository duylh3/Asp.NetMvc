using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ideal.Repository;

namespace ideal.Controllers
{
    public class QuestionController : Controller
    {
        private QuestionRepository _re = new QuestionRepository();
        //    GET: QA
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult CauHoi()
        {
            return View();
        }

        public JsonResult GetData(int page, int pageSize, string cate)
        {
            var data = _re.ListQuestion(page, pageSize, cate);

            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}