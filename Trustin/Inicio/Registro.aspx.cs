using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Capa_Datos;
using System.Data;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Windows;

namespace Trustin.Inicio
{
    public partial class Registro : System.Web.UI.Page
    {
        //public string host= "Data Source=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;initial catalog=tiusr25pl_TrustIn; user id=warayar;password=warayar@!!!;MultipleActiveResultSets=True";
        SqlConnection conn = new SqlConnection("Data Source=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;initial catalog=tiusr25pl_TrustIn; user id=warayar;password=warayar@!!!;MultipleActiveResultSets=True;");
        protected bool estado = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void guardarDatosUsuario()
        {

            try
            {
                //string imagenBase64 = Convert.ToBase64String(File.ReadAllBytes(@"C:\Users\natyr\source\repos\Trustin_1\imagenes\" + txtimagenfoto.Text));
                string imagenBase64 = Convert.ToBase64String(FileUpload1.FileBytes);

                string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
                SqlConnection sqlConectar = new SqlConnection(cn);
                SqlCommand cmd = new SqlCommand("InsertarUsuario", sqlConectar);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection.Open();
                cmd.Parameters.Add("@perfil_nombre", SqlDbType.VarChar).Value = Request.Form["txtnombre"];
                Console.WriteLine(Request.Form["txtnombre"]);
                cmd.Parameters.Add("@perfil_apellido", SqlDbType.VarChar).Value = Request.Form["txtapellido"];
                Console.WriteLine(Request.Form["txtapellido"]);
                cmd.Parameters.Add("@usuario_contraseña", SqlDbType.VarChar).Value = Request.Form["txtcontrasena"];
                Console.WriteLine(Request.Form["txtcontrasena"]);
                cmd.Parameters.Add("@perfil_email", SqlDbType.VarChar).Value = Request.Form["txtemail"];
                Console.WriteLine(Request.Form["txtemail"]);
                cmd.Parameters.Add("@edad", SqlDbType.Int).Value = Request.Form["txtedad"];
                Console.WriteLine(Request.Form["txtedad"]);
                cmd.Parameters.Add("@perfil_descripcion", SqlDbType.VarChar).Value = Request.Form["txtdescripcion"];
                Console.WriteLine(Request.Form["txtdescripcion"]);
                cmd.Parameters.Add("@id_genero", SqlDbType.Int).Value = Request.Form["gender"];
                Console.WriteLine(Request.Form["gender"]);
                cmd.Parameters.Add("@id_preferencia", SqlDbType.Int).Value = Request.Form["generoInteres"];
                Console.WriteLine(Request.Form["generoInteres"]);
                cmd.Parameters.Add("@id_caracteristica", SqlDbType.Int).Value = Request.Form["busco"];
                Console.WriteLine(Request.Form["busco"]);
                cmd.Parameters.Add("@id_provincia", SqlDbType.Int).Value = Request.Form["provincia"];
                Console.WriteLine(Request.Form["provincia"]);
                cmd.Parameters.Add("@id_categoria", SqlDbType.Int).Value = Request.Form["categoria"];
                Console.WriteLine(Request.Form["categoria"]);
                cmd.Parameters.Add("@id_estado", SqlDbType.Int).Value = 1;


                // Agregar parámetro para la imagen
                byte[] imageData = Convert.FromBase64String(imagenBase64);
                cmd.Parameters.Add("@id_photo", SqlDbType.VarBinary).Value = imageData;
                Console.WriteLine(imageData);

                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
            }catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        protected void btnguardarregistro1_Click(object sender, EventArgs e)
        {
            guardarDatosUsuario();
        }
        /*
        protected void btnguardarperfil(object sender, EventArgs e)
        {
            
            conn.Open();
            int resultado = 0;
            SqlCommand cmd = new SqlCommand("Insert into Perfil(perfil_nombre, perfil_apellido,perfil_fecnac,id_provincia,id_intereses_usuario,id_genero,perfil_email,usuario_contraseña) Values('"+nombre.Text +"' , '" +apellido.Text +"' , '" +nacimiento.SelectedDate.ToShortDateString() +"' , '" + provincia.SelectedValue + "' , '"+ busco.SelectedValue+"' , '"+ genero.SelectValue +"' , '"+email.Text + "' , '"+contrasena.Text + "' )"); 
            cmd.Connection=conn;

            resultado = cmd.ExecuteNonQuery();
            if (resultado > 0)
            {
                Response.Redirect("../Usuario/perfiles.aspx");
                //Response.Write("<script> window.location.href='../Usuario/perfil.aspx'; </script>")
            }
            else
            {
                //Response.Redirect("");
                Response.Write("<script> alert ('Error'); </script>");
            }
            conn.Close();


        }
        */
    }
}