using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Windows;
using ConfigurationManager = System.Configuration.ConfigurationManager;

namespace Trustin.Inicio
{
    public partial class InicioSesion : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            string CS = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            string queryS = "SELECT IsOffline FROM WebsiteStatus WHERE id = @id";

            using (SqlConnection connection = new SqlConnection(CS))
            {
                using (SqlCommand command = new SqlCommand(queryS, connection))
                {
                    command.Parameters.AddWithValue("@id", 1); // replace 1 with the actual ID of the record you want to load

                    connection.Open();

                    object result = command.ExecuteScalar();

                    try
                    {
                        bool showPage1 = false;
                        if (result != null && result != DBNull.Value)
                        {
                            showPage1 = Convert.ToBoolean(result);
                        }

                        if (showPage1 && Session["redirected"] == null)
                        {
                            Session["redirected"] = true;
                            Response.Redirect("/Inicio/InicioSesion.aspx");
                        }
                        else if (!showPage1)
                        {
                            Response.Redirect("/Usuario/SiteOfflineU.aspx");
                        }
                    }
                    catch (Exception ex) { }
                }
            }
        }
    


        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {

            var seed = Environment.TickCount;
            var random = new Random(seed);
            var value = random.Next(100000, 999999);
            string numString = value.ToString();
            //lblValor.Text = numString;
            try
            {
                Clases.clsCorreo objCorreo = new Clases.clsCorreo();

                string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
                SqlConnection sqlConectar = new SqlConnection(cn);
                SqlCommand cmd = new SqlCommand("SP_Login", sqlConectar)
                { CommandType = CommandType.StoredProcedure };
                cmd.Connection.Open();
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = txtEmail.Text;
                cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = txtPassword.Text;
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["usuariologueado"] = txtEmail.Text;

                    // Cerrar el primer SqlDataReader antes de ejecutar la segunda consulta
                    dr.Close();

                    string stServidor = ConfigurationManager.AppSettings["stServidor"].ToString();
                    string stCorreoUsuario = ConfigurationManager.AppSettings["stCorreoUsuario"].ToString();
                    string stContrasena = ConfigurationManager.AppSettings["stContrasena"].ToString();
                    string stPuerto = ConfigurationManager.AppSettings["stPuerto"].ToString();
                    string stAsunto = "Token";
                    string stMensaje = "El código a ingresar es: " + Convert.ToString(numString);

                    string correo = txtEmail.Text;

                    //SqlConnection oconexion = new SqlConnection(cn);
                    SqlCommand cmd2 = new SqlCommand("insertarToken", sqlConectar);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@email", correo);
                    cmd2.Parameters.AddWithValue("@token", numString);
                    //oconexion.Open();
                    cmd2.ExecuteNonQuery();
                    //oconexion.Close();
                    /*using (SqlConnection oconexion = new SqlConnection(cn))
                    {
                        SqlCommand conn = new SqlCommand("insertarToken", oconexion);
                        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = Request.Form["txtEmail"];
                        Console.WriteLine(Request.Form["txtEmail"]);
                        cmd.Parameters.AddWithValue("@token", numString);
                        oconexion.Open();
                        cmd.ExecuteNonQuery();
                    }*/

                    objCorreo.envioEmail(stServidor, stCorreoUsuario, stContrasena, true, true, stCorreoUsuario, txtEmail.Text, 1, stAsunto, stMensaje, stPuerto);
                    Response.Write("<Scrip Languaje='JavaScript'>parent.alert('El correo se ha enviado con éxito')</Script> ");

                    // Ejecutar la segunda consulta para obtener el rol del usuario
                    SqlCommand cmdRol = new SqlCommand("SELECT id_rol FROM Perfil WHERE perfil_email = @email", sqlConectar);
                    cmdRol.Parameters.AddWithValue("@email", txtEmail.Text);
                    string rol = cmdRol.ExecuteScalar()?.ToString();

                    // Redirigir al usuario según su rol
                    if (rol == "1")
                    {
                        Response.Redirect("/Admin/Admin_Dashboard.aspx");
                    }
                    else if (rol == "2")
                    {
                        Response.Redirect("/Verificador/intranetVerificador.aspx");
                    }
                    else if (rol == "3")
                    {
                        Response.Redirect("/Inicio/PaginaToken.aspx");
                        //Response.Redirect("/Usuario/Usuario_Dashboard.aspx");
                    }
                }
                else
                {
                    MessageBox.Show("Usuario inválido. Verifique su email o contraseña!");
                    dr.Close();
                }

                cmd.Connection.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<Scrip Languaje='JavaScript'>parent.alert('" + ex.Message + "')</Script> ");
            }
        }

    }
}