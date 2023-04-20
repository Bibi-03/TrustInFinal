using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Capa_Datos;
using System.Net.Mail;
using System.Net;
using System.Xml.Linq;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;

namespace Trustin.Admin
{
    public partial class Admin_Agregar_Usuario : System.Web.UI.Page
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

        protected void btnadd_Click(object sender, EventArgs e)
        {

            string name = txtnombre.Text;
            string email = txtemail.Text;
            string rol = ddlrol.SelectedItem.Text;
            string fecha = txtfecing.Text;


            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("Insertar_colaborador", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.Add("@colaborador_nombre", SqlDbType.VarChar, 15).Value = txtnombre.Text;
            cmd.Parameters.Add("@colaborador_apellido", SqlDbType.VarChar, 15).Value = txtapellido.Text;
            cmd.Parameters.Add("@colaborador_contrasenia", SqlDbType.VarChar, int.MaxValue).Value = txtcontraseña.Text;
            cmd.Parameters.Add("@colaborador_correo", SqlDbType.VarChar, 50).Value = txtemail.Text;
            cmd.Parameters.Add("@colaborador_fecnac", SqlDbType.Date).Value = txtfechanac.Text;
            cmd.Parameters.Add("@colaborador_fecingreso", SqlDbType.Date).Value = txtfecing.Text;
            cmd.Parameters.Add("@id_rol", SqlDbType.Int).Value = ddlrol.Text;
            cmd.Parameters.Add("@id_estado", SqlDbType.Int).Value = ddlestado.Text;

            cmd.ExecuteNonQuery();
            cmd.Connection.Close();


            string htmlString = @"<table style='max-width: 600px; padding: 10px; margin:0 auto; border-collapse: collapse;'>
	        <tr>
		    <td style='padding: 0'>
			<img style='padding: 0; display: block' href='../Imagenes/LOGO-COLOR.png' width='100%'>
		    </td>
	        </tr>
	
	        <tr>
		    <td style='background-color: #ecf0f1'>
			<div style='color: #34495e; margin: 4% 10% 2%; text-align: justify;font-family: sans-serif'>
				<h2 style='color: #8C2641; margin: 0 0 7px'>Bienvenido a Trustin</h2>
				<p style='margin: 2px; font-size: 15px text-align: justify;'>
                 Bienvenido (a): " + name + " a nuestro sitio Trustin. <br/ >Quedaste registrado como  " + rol + " en nuestro sitio el dia " + fecha + ".<br/ >" +
                 " Se te envio un correo a " + email + " " +
    " <br/>Contáctenos al 8888-8888. <br/ >Muchas gracias.</p> <br/>" +
    "	</div><p style='color: #b3b3b3; font-size: 12px; text-align: center;margin: 30px 0 0'>TRUSTIN</p></div></td></tr></table>";




            MailMessage message = new MailMessage();
            message.From = new MailAddress("trustinapsw@gmail.com");
            message.To.Add(new MailAddress(email));
            message.Subject = "Bienvenido (a) a Trustin, " + name + "!";
            message.Body = htmlString;
            message.IsBodyHtml = true;


            // Set up the SMTP client to send the email
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential("trustinapsw@gmail.com", "pzoeezxqhgtsnble");

            // Send the email
            try
            {
                smtpClient.Send(message);
                lblMessage.Text = "Your registration has been successful. A welcome email has been sent to " + email + ".";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred while sending the email: " + ex.Message;
            }


            txtnombre.Text = "";
            txtapellido.Text = "";
            txtcontraseña.Text = "";
            txtemail.Text = "";
            txtfechanac.Text = "";
            txtfecing.Text = "";
            ddlrol.Text = "Administrador";
            ddlestado.Text = "Activo";

        }


        protected void btnmodify_Click(object sender, EventArgs e)
        {

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

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
    }
}