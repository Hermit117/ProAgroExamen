//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExamenProAgro.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class CAT_USUARIO
    {
        public int idUsuario { get; set; }
        public string Contraseña { get; set; }
        public string Nombre { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public string RFC { get; set; }
    
        public virtual CAT_USUARIO_ESTADO CAT_USUARIO_ESTADO { get; set; }
    }
}
