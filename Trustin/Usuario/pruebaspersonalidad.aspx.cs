using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace Trustin.Usuario
{
    public partial class pruebaspersonalidad : System.Web.UI.Page
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
                Response.Redirect("/Trustin_3Final/Inicio/InicioSesion.aspx");
            }

            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            sqlConectar.Open();

            // Obtener datos de la foto del perfil
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
            Response.Redirect("/Trustin_3Final/Inicio/InicioSesion.aspx");
        }

        protected void btnEnviar1_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("ingresar_test", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@id_test_pregunta", 1);
                    command.Parameters.AddWithValue("@respuesta", ddl1.Text);
                    command.Parameters.AddWithValue("@correo", lblUsuario.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            ClientScript.RegisterStartupScript(this.GetType(), "", "alertaCita()", true);
        }



        protected void btnEnviar2_Click(object sender, EventArgs e)
        {
            // 1. Crear una conexión a la base de datos
           

            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("ingresar_test", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.AddWithValue("@id_test_pregunta", "2"); 
            cmd.Parameters.Add("@respuesta", SqlDbType.VarChar, 30).Value = ddl2.Text;
            cmd.Parameters.Add("@correo", SqlDbType.VarChar, 50).Value = lblUsuario.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "", "alertaCita()", true);

            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }


        protected void btnEnviar3_Click(object sender, EventArgs e)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("ingresar_test", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.AddWithValue("@id_test_pregunta", "3");
            cmd.Parameters.Add("@respuesta", SqlDbType.VarChar, 30).Value = ddl3.Text;
            cmd.Parameters.Add("@correo", SqlDbType.VarChar, 50).Value = lblUsuario.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "", "alertaCita()", true);

            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }


        protected void btnEnviar4_Click(object sender, EventArgs e)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("ingresar_test", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.AddWithValue("@id_test_pregunta", "4");
            cmd.Parameters.Add("@respuesta", SqlDbType.VarChar, 30).Value = ddl4.Text;
            cmd.Parameters.Add("@correo", SqlDbType.VarChar, 50).Value = lblUsuario.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "", "alertaCita()", true);

            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }


        protected void btnEnviar5_Click(object sender, EventArgs e)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("ingresar_test", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.AddWithValue("@id_test_pregunta", "5");
            cmd.Parameters.Add("@respuesta", SqlDbType.VarChar, 30).Value = ddl5.Text;
            cmd.Parameters.Add("@correo", SqlDbType.VarChar, 50).Value = lblUsuario.Text;
            ClientScript.RegisterStartupScript(this.GetType(), "", "alertaCita()", true);

            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }

    }
}