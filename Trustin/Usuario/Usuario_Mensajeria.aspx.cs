using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;
using System.Windows.Controls;

namespace Trustin.Usuario
{
    public partial class Usuario_Mensajeria : System.Web.UI.Page
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
                Response.Redirect("InicioSesion.aspx");
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
        
        protected void brnadd_Click(object sender, EventArgs e)
        {
            Session["name"] = txtname.Text;
            lbluname.Text = "Welcome " + txtname.Text;
            txtname.Text = "";
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            string name = Session["name"].ToString();
            string message = txtsend.Text;
            string my = name + "::" + message;

            Application["message"] = Application["message"] + my + Environment.NewLine;
            txtsend.Text = "";
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
            Response.Redirect("../Inicio/InicioSesion.aspx");
        }
        /*
protected void btnbuscar_Click(object sender, EventArgs e)
{
   /*string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
   SqlConnection sqlConectar = new SqlConnection(cn);
   SqlCommand cmd = new SqlCommand("SP_buscaPerfil", sqlConectar)
   { CommandType = CommandType.StoredProcedure };
   cmd.Connection.Open();

   // set the parameters for the sp_help stored procedure
   cmd.Parameters.Add("@perfil_nombre", SqlDbType.VarChar, 15).Value = txtbuscar.Text;
   cmd.Parameters.AddWithValue("@objtype", "PROCEDURE");

   // execute the sp_help stored procedure and get the results
   SqlDataReader reader = cmd.ExecuteReader();

   // loop through the results and display the information
   while (reader.Read())
   {
       string propertyName = reader.GetString(0);
       string propertyValue = reader.GetString(1);
       // display the property name and value in your web page or console
       Console.WriteLine("{0}: {1}", propertyName, propertyValue);
   }

   // close the reader, command, and connection objects
   reader.Close();
   cmd.Dispose();
   cmd.Connection.Close();*/

        /*

            string spName = txtbuscar.Text.Trim();
            if (!string.IsNullOrEmpty(spName))
            {
                DataTable dt = SearchStoredProcedure("");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        private DataTable SearchStoredProcedure(string SP_buscaPerfil)
        {
            string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_buscaPerfil", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@perfil_nombre", SP_buscaPerfil);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        */
    }
}