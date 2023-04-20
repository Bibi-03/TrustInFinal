using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trustin.Usuario
{
    public partial class Usuario_Dashboard : System.Web.UI.Page
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
                Response.Redirect("/Trustin_3F/InicioSesion.aspx");
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

            ///////Indicador hombres
            string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConexion = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("ContarHombres", sqlConexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection.Open();
            cmd.Parameters.Add("@totalHombres", SqlDbType.Int).Value = 1;
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();


            string conexionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            string query = "ContarHombres";
            int totalHombres = 0;

            using (SqlConnection connection = new SqlConnection(conexionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter parameter = new SqlParameter("@TotalHombres", SqlDbType.Int);
                parameter.Direction = ParameterDirection.Output;
                command.Parameters.Add(parameter);

                connection.Open();
                command.ExecuteNonQuery();

                totalHombres = Convert.ToInt32(parameter.Value);
            }

            lblTotalHombrres.Text = totalHombres.ToString();





            ///////Indicador mujeres
            string Stringconnection = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlSConexion = new SqlConnection(Stringconnection);
            SqlCommand cmdcommand = new SqlCommand("ContarMujeres", sqlSConexion);
            cmdcommand.CommandType = CommandType.StoredProcedure;
            cmdcommand.Connection.Open();
            cmdcommand.Parameters.Add("@totalMujeres", SqlDbType.Int).Value = 2;
            cmdcommand.ExecuteNonQuery();
            cmdcommand.Connection.Close();


            string Stringconexion = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            string queryM = "ContarMujeres";
            int totalMujeres = 0;

            using (SqlConnection connection = new SqlConnection(Stringconexion))
            {
                SqlCommand command = new SqlCommand(queryM, connection);
                command.CommandType = CommandType.StoredProcedure;

                SqlParameter parameter = new SqlParameter("@totalMujeres", SqlDbType.Int);
                parameter.Direction = ParameterDirection.Output;
                command.Parameters.Add(parameter);

                connection.Open();
                command.ExecuteNonQuery();

                totalMujeres = Convert.ToInt32(parameter.Value);
            }

            lbltotalmujeres.Text = totalMujeres.ToString();

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
            Response.Redirect("/Trustin_3F/Inicio/InicioSesion.aspx");
        }
    }
}