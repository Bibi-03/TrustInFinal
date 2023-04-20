using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Windows.Media.Media3D;
using System.Configuration;

namespace Trustin.Admin
{
    public partial class Admin_Config : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologueado"] != null)
            {
                string userName = Session["usuariologueado"].ToString();
                lblUsuario.Text = userName;
            }
            else
            {
                Response.Redirect("/Trustin_3Final/InicioSesion.aspx");
            }
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            sqlConectar.Open();
            SqlCommand cmdFoto = new SqlCommand("SP_FOTOPERFIL", sqlConectar);
            cmdFoto.CommandType = CommandType.StoredProcedure;
            cmdFoto.Parameters.Add("@usuario", SqlDbType.VarChar).Value = lblUsuario.Text;

            SqlDataReader drFoto = cmdFoto.ExecuteReader();
            if (drFoto.Read())
            {
                byte[] imageData = (byte[])drFoto["id_photo"];
                string base64String = Convert.ToBase64String(imageData);
                string imageSrc = string.Format("data:image/gif;base64,{0}", base64String);

                img1.ImageUrl = imageSrc;
            }
            drFoto.Close();

            sqlConectar.Close();

        }
    

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            // Clear the authentication cookie
            HttpCookie authCookie = Request.Cookies["YourAuthCookieName"];
            if (authCookie != null)
            {
                authCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(authCookie);
            }

            // Redirect to the login page
            Response.Redirect("/Trustin_3Final/Inicio/InicioSesionAdmin.aspx");
        }


        protected void btnartoya_Click(object sender, EventArgs e)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("modifica_sitio", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = 1;
            cmd.Parameters.Add("@IsOffline", SqlDbType.Int).Value = txtdesconectar.Text;

            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

        }
    }   
}