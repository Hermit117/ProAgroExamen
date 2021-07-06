using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenProAgro.Negocio
{
    /// <summary>
    /// Controlador de las respuestas genéricas
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public static class GenericResponseManager<T>
    {
        /// <summary>
        /// Construye la respuesta genérica para un caso exitoso
        /// </summary>
        /// <param name="success_message">Texto mensaje de éxito</param>
        /// <param name="data">Objeto genérico</param>
        /// <returns></returns>
        public static GenericResponseObject<T> SetSuccessResponse(string success_message, T data)
        {
            GenericResponseObject<T> responseObject = new GenericResponseObject<T>();

            responseObject.is_success = true;
            responseObject.success_message = success_message;
            responseObject.data = data;

            return responseObject;
        }

        /// <summary>
        /// Construye la respuesta genérica para un caso donde hubo un error
        /// </summary>
        /// <param name="errorMessage">Texto mensaje de error</param>
        /// <param name="debug_message">Texto mensaje de error debug</param>
        /// <param name="sub_errors">Texto mensaje de sub errores</param>
        /// <returns></returns>
        public static GenericResponseObject<T> SetErrorResponse(
            string message,
            string innerException,
            string source,
            string stackTrace)
        {
            GenericResponseObject<T> responseObject = new GenericResponseObject<T>();
            GenericResponseErrorObject errorObject = new GenericResponseErrorObject();

            errorObject.message = message;
            errorObject.innerException = innerException;
            errorObject.source = source;
            errorObject.stackTrace = stackTrace;


            responseObject.is_success = false;
            responseObject.api_error = errorObject;

            return responseObject;
        }

    }

    /// <summary>
    /// Modelo para los mensajes exitosos
    /// </summary>
    /// <typeparam name="T">Objeto genérico</typeparam>
    public class GenericResponseObject<T>
    {
        public bool is_success { get; set; }
        public string success_message { get; set; }
        public GenericResponseErrorObject api_error { get; set; }
        public T data { get; set; }
    }

    /// <summary>
    /// Modelo para los mensajes de error
    /// </summary>
    public class GenericResponseErrorObject
    {
        public string message { get; set; }
        public string innerException { get; set; }
        public string source { get; set; }
        public string stackTrace { get; set; }
    }
}
