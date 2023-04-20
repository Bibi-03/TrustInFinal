using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Trustin.Inicio
{
    public partial class PaginaToken : System.Web.UI.Page
    {
        string userName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologueado"] != null)
            {
                userName = Session["usuariologueado"].ToString();
                //lblUsuario.Text = userName;

            }
            else
            {
                Response.Redirect("InicioSesion.aspx");
            }

         
        }
        protected void btnVerificarToken_Click(object sender, EventArgs e)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("obtenerToken", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = userName;
            cmd.Parameters.Add("@token", SqlDbType.Char, 10).Value = txtToken.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            // int respuesta = Convert.ToInt32(cmd.ExecuteScalar());
            //string respuesta = cmd.ExecuteScalar()?.ToString();
            //cmd.ExecuteNonQuery();

            if (dr.Read())
            {
                Response.Redirect("/Usuario/Usuario_Dashboard.aspx");
            }
            else
            {
                Response.Redirect("/Inicio/InicioSesion.aspx");
            }
        }
    }
}