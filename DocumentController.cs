using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ideal.Repositories;

namespace ideal.Controllers
{
    public class DocumentController : Controller
    {
        DocumentRepository _re = new DocumentRepository();

        // GET: Document
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ThamKhao()
        {
            return View();
        }

        public JsonResult GetData(string cate)
        {
            var data = _re.ListDocument(cate);

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetDocumentDetail(int id)
        {
            var data = _re.GetDocumentDetail(id);

            return Json(data, JsonRequestBehavior.AllowGet);
        }

    }
}