using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenProAgro.DataAccess
{
    public class Configuracion
    {
        public static List<ValidaLogin_Result> Login(CAT_USUARIO modelo)
        {
            using (ExamenRelutamientoProAgroEntities ctx = new ExamenRelutamientoProAgroEntities())
            {
                //return ctx.ObtenerGeorreferencia(parametro).ToList();  EN CASO DE 1 SOLO PARAMETRO
                //ctx.ObtenerGeorreferencia(
                //    modelo.Nombre,
                //    modelo.Contraseña);  CAMBIAR POR VALIDALOGIN

                return ctx.ValidaLogin(modelo.Nombre, modelo.Contraseña).ToList();
            }
        }

        public static List<ObtenerEstados_Result> ObtenerEstados()
        {
            using(ExamenRelutamientoProAgroEntities ctx = new ExamenRelutamientoProAgroEntities())
            {
                return ctx.ObtenerEstados().ToList();
            }
        }

        public static List<ObtenerUsuario_Result> ObtenerUsuarios()
        {
            using(ExamenRelutamientoProAgroEntities ctx = new ExamenRelutamientoProAgroEntities())
            {
                return ctx.ObtenerUsuario().ToList();
            }
        }

        public static List<ObtenerGeorreferencia_Result> ObtenerGeorreferencia(CAT_USUARIO modelo)
        {
            using (ExamenRelutamientoProAgroEntities ctx = new ExamenRelutamientoProAgroEntities())
            {
                return ctx.ObtenerGeorreferencia(modelo.idUsuario).ToList();
            }
        }
    }
}
