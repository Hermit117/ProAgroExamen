using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ExamenProAgroPortal.Controllers
{
    public class GeorreferenciaController : Controller
    {
        public ActionResult Georreferencia(int id)
        {
            TempData["id"] = id;
            return View();
        }
    }
}