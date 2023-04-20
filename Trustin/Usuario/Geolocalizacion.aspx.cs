using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using WebGrease.Activities;

namespace Trustin.Usuario
{
    public partial class Geolocalizacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create a connection to the SQL Server
            SqlConnection connection = new SqlConnection("Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;");

            // Open the connection to the SQL Server
            connection.Open();

            // Create a SQL command to retrieve the data
            SqlCommand command = new SqlCommand("SELECT id_perfil, perfil_nombre FROM Perfil", connection);

            // Execute the command and retrieve the data reader
            SqlDataReader reader = command.ExecuteReader();

            // Read the data from the data reader
            if (reader.Read())
            {
                // Get the value of the data column
                int id_perfil = reader.GetInt32(0);
                string perfil_nombre = reader.GetString(1);


                // Set the label text to the data value
                lblusuarioid.Text = id_perfil.ToString();
                lblnomusuario.Text = perfil_nombre;
            }

            // Close the data reader and connection
            reader.Close();
            connection.Close();
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

        protected void btnsavelocation_Click(object sender, EventArgs e)
        {
            string latitude = Request.Form["location"].Split(',')[0];
            string longitude = Request.Form["location"].Split(',')[1];
            string errorMessage = "";

            string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();

            try
            {
                string query = "INSERT INTO Guarda_Ubicacion (Latitude, Longitude) VALUES (@Latitude, @Longitude)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Latitude", latitude);
                command.Parameters.AddWithValue("@Longitude", longitude);
                command.ExecuteNonQuery();
                connection.Close();

            }
            catch (Exception ex)
            {
                errorMessage = "An error occurred: " + ex.Message;
            }

            if (!string.IsNullOrEmpty(errorMessage))
            {
                lblmessage.Text = errorMessage;
                lblmessage.Visible = true;
            }

        }

    }    
}