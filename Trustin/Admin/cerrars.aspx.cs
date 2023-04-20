using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trustin.Admin
{
    public partial class cerrars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("usuariologueado");
            HttpContext.Current.ApplicationInstance.CompleteRequest();
            HttpContext.Current.Response.Redirect("/Trustin_3F/Inicio/InicioSesion.aspx", false);
        }
    }
}