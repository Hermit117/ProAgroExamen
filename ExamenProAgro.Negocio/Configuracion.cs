using ExamenProAgro.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenProAgro.Negocio
{
    public class Configuracion
    {
        public static GenericResponseObject<List<ValidaLogin_Result>> Login(CAT_USUARIO modelo)
        {
            try
            {
                var data = DataAccess.Configuracion.Login(modelo);

                return GenericResponseManager<List<ValidaLogin_Result>>
                    .SetSuccessResponse("OK", data);
            }
            catch (Exception ex)
            {
                return GenericResponseManager<List<ValidaLogin_Result>>
                    .SetErrorResponse
                        (ex.Message,
                        ex.InnerException?.Message,
                        ex.Source,
                        ex.StackTrace);
            }
        }

        public static GenericResponseObject<List<ObtenerEstados_Result>> ObtenerEstados()
        {
            try
            {
                var data = DataAccess.Configuracion.ObtenerEstados();

                return GenericResponseManager<List<ObtenerEstados_Result>>
                    .SetSuccessResponse("OK", data);
            }
            catch (Exception ex)
            {
                return GenericResponseManager<List<ObtenerEstados_Result>>
                    .SetErrorResponse
                        (ex.Message,
                        ex.InnerException?.Message,
                        ex.Source,
                        ex.StackTrace);
            }
        }

        public static GenericResponseObject<List<ObtenerUsuario_Result>> ObtenerUsuarios()
        {
            try
            {
                var data = DataAccess.Configuracion.ObtenerUsuarios();

                return GenericResponseManager<List<ObtenerUsuario_Result>>
                    .SetSuccessResponse("OK", data);
            }
            catch (Exception ex)
            {
                return GenericResponseManager<List<ObtenerUsuario_Result>>
                    .SetErrorResponse
                        (ex.Message,
                        ex.InnerException?.Message,
                        ex.Source,
                        ex.StackTrace);
            }
        }

        public static GenericResponseObject<List<ObtenerGeorreferencia_Result>> ObtenerGeorreferencia(CAT_USUARIO modelo)
        {
            try
            {
                var data = DataAccess.Configuracion.ObtenerGeorreferencia(modelo);
                return GenericResponseManager<List<ObtenerGeorreferencia_Result>>
                    .SetSuccessResponse("OK", data);
            }
            catch (Exception ex)
            {
                return GenericResponseManager<List<ObtenerGeorreferencia_Result>>
                    .SetErrorResponse
                        (ex.Message,
                        ex.InnerException?.Message,
                        ex.Source,
                        ex.StackTrace);
            }
        }
    }
}
