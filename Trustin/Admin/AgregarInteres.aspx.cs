using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Windows;
using Trustin.Usuario;

namespace Trustin.Admin
{
    public partial class AgregarInteres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void agregarInteres_Click(object sender, EventArgs e)
        {
            string categoria = ddlCategorias.SelectedValue;
            string nombreInteres = txtNombreInteres.Text;

            // Crear y configurar la conexión a la base de datos
            string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Verificar si el interés ya existe en la base de datos
                SqlCommand selectCommand = new SqlCommand("SELECT count(*) FROM Intereses_Categoria WHERE categoria_Nombre = @nombreInteres", connection);
                selectCommand.Parameters.AddWithValue("@nombreInteres", nombreInteres);
                connection.Open();
                int count = (int)selectCommand.ExecuteScalar();
                try { 
                if (count > 0)
                {
                    throw new Exception("El interés ya está agregado en la base de datos.");
                }
                }catch(Exception ex) { MessageBox.Show(ex.Message); }

                // Agregar el interés a la base de datos
                SqlCommand command = new SqlCommand("SP_AGREGARINTERES", connection);
                command.CommandType = CommandType.StoredProcedure;

                // Agregar los parámetros del procedimiento almacenado
                command.Parameters.AddWithValue("@categoria", categoria);
                command.Parameters.AddWithValue("@nombreInteres", nombreInteres);

                // Ejecutar el procedimiento almacenado
                command.ExecuteNonQuery();
            }

            // Cerrar la ventana emergente
            ScriptManager.RegisterStartupScript(this, GetType(), "cerrarVentana", "window.close();", true);




        }
    }
}