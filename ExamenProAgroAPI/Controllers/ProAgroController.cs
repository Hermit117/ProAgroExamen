using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using ExamenProAgro.DataAccess;

namespace ExamenProAgroAPI.Controllers
{
    [RoutePrefix("api/proagro")]
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ProAgroController : ApiController
    {
        [Route("login")]
        [HttpPost]
        public IHttpActionResult Login(CAT_USUARIO modelo)
        {
            return Json(ExamenProAgro.Negocio.Configuracion.Login(modelo));
        }

        [Route("obtenerestados")]
        [HttpGet]
        public IHttpActionResult ObtenerEstados()
        {
            return Json(ExamenProAgro.Negocio.Configuracion.ObtenerEstados());
        }

        [Route("obtenerusuarios")]
        [HttpGet]
        public IHttpActionResult ObtenerUsuarios()
        {
            return Json(ExamenProAgro.Negocio.Configuracion.ObtenerUsuarios());
        }

        [Route("obtenergeorreferencia")]
        [HttpPost]
        public IHttpActionResult ObtenerGeorreferencia(CAT_USUARIO modelo)
        {
            return Json(ExamenProAgro.Negocio.Configuracion.ObtenerGeorreferencia(modelo));
        }
    }
}
