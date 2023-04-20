using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trustin.Inicio.Clases
{
    public class clsCorreo
    {
        public void envioEmail(string stServidor,
           string stCorreoUsuario,
           string stContrasena,
           bool blConexionSeguraSSL,
           bool blAuthentication,
           string stFrom,
           string stTo,
           int inTipo,
           string stAsunto,
           string stMensaje,
           //int intPrioridad,
           string stPuerto)
        {
            try
            {
                System.Net.Mail.MailMessage Mail = new System.Net.Mail.MailMessage();

                //cuerpo del correo
                Mail.From = new System.Net.Mail.MailAddress(stFrom);
                Mail.To.Add(stTo);
                Mail.Subject = stAsunto;
                Mail.Body = stMensaje;

                if (inTipo == 0) Mail.IsBodyHtml = false;//texto
                else if (inTipo == 1) Mail.IsBodyHtml = true;//hacer una inserción en el cuerpo del correo( tabla, diseño...)

                //if (intPrioridad == 2) Mail.Priority = System.Net.Mail.MailPriority.High;
                //else if (intPrioridad == 1) Mail.Priority = System.Net.Mail.MailPriority.Low;
                //else if (intPrioridad == 0) Mail.Priority = System.Net.Mail.MailPriority.Normal;

                //servidor de correos 
                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient();
                smtp.Host = stServidor;

                if (blAuthentication) smtp.Credentials = new System.Net.NetworkCredential(stCorreoUsuario, stContrasena);
                if (stPuerto.Length > 0) smtp.Port = Convert.ToInt32(stPuerto);

                smtp.EnableSsl = blConexionSeguraSSL;
                smtp.Send(Mail);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}