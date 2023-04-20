using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Trustin.Admin
{
    public partial class GestorPinactivo : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                
                SqlConnection connection = new SqlConnection(cn);
                string query = "select id_perfil as IdUsuario,perfil_email as Email,id_estado as Estado from Perfil where id_estado=0";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                gvPerfil.DataSource = dataTable;
                gvPerfil.DataBind();
            }
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string opcionSeleccionada = ddlBusquedaEmail.SelectedValue;
            string terminoBusqueda = txtbuscar.Text;

            if (opcionSeleccionada == "0")
            {
                DataTable tablaResultados = cargaUsuarioID(terminoBusqueda);
                gvPerfil.DataSource = tablaResultados;
                gvPerfil.DataBind();
            }
            else if (opcionSeleccionada == "1")
            {
                DataTable tablaResultados = cargaEmail(terminoBusqueda);
                gvPerfil.DataSource = tablaResultados;
                gvPerfil.DataBind();
            }
        }



        public DataTable cargaUsuarioID(string terminoBusqueda)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection sqlConectar = new SqlConnection(cn))
            {
                using (SqlCommand cmd = new SqlCommand("SP_BusquedaInactivoIDp", sqlConectar))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@idperfil", SqlDbType.Int).Value = Convert.ToInt32(terminoBusqueda);
                    cmd.Connection.Open();

                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable tablaResultados = new DataTable();
                    tablaResultados.Load(reader);

                    cmd.Connection.Close();

                    return tablaResultados;
                }
            }
        }



        public DataTable cargaEmail(string terminoBusqueda)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection sqlConectar = new SqlConnection(cn))
            {
                using (SqlCommand cmd = new SqlCommand("SP_BusquedaInactivoEmail", sqlConectar))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = terminoBusqueda;
                    cmd.Connection.Open();

                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable tablaResultados = new DataTable();
                    tablaResultados.Load(reader);

                    cmd.Connection.Close();

                    return tablaResultados;
                }
            }
        }

        protected void gvPerfil_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Activar")
            {
                int index;

                if (!int.TryParse(e.CommandArgument.ToString(), out index))
                {
                    MessageBox.Show("Error con el parametro");
                    return;
                }

                GridViewRow row = gvPerfil.Rows[index];
                int idperfil;
                if (!int.TryParse(row.Cells[1].Text, out idperfil))
                {
                    MessageBox.Show("Error con el parametro");
                    return;
                }

                string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
                using (SqlConnection sqlConectar = new SqlConnection(cn))
                {
                    sqlConectar.Open();

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = sqlConectar;
                        cmd.CommandText = "UPDATE Perfil SET id_estado = 1 WHERE id_perfil = @idperfil";
                        cmd.Parameters.Add("@idperfil", SqlDbType.Int).Value = idperfil;

                        int filasActualizadas = cmd.ExecuteNonQuery();
                        try
                        {
                            if (filasActualizadas == 0)
                            {
                                throw new Exception("No se actualizó ningún registro.");
                            }
                        }
                        catch (Exception ex) { MessageBox.Show(ex.Message); }
                    }

                    // Actualizar el GridView
                    SqlConnection connection = new SqlConnection(cn);
                    string query = "select p.id_perfil as Id_Usuario,p.perfil_email as Email,e.estado_nombre as Estado from Perfil p, Estado e where p.id_estado = e.id_estado and p.id_estado = 0";
                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    gvPerfil.DataSource = dataTable;
                    gvPerfil.DataBind();
                }
            }
        }


        protected void ddlSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int id = int.Parse(ddlBusqueda.SelectedValue);

            //// Establecer la cadena de conexión


            //// Crear una conexión a la base de datos
            //using (SqlConnection connection = new SqlConnection(cn))
            //{
            //    // Crear un comando para llamar al procedimiento almacenado
            //    using (SqlCommand command = new SqlCommand("SP_BusquedaActivoIDp", connection))
            //    {
            //        // Establecer el tipo de comando como procedimiento almacenado
            //        command.CommandType = CommandType.StoredProcedure;

            //        // Agregar el parámetro de entrada para la búsqueda
            //        command.Parameters.AddWithValue("@idperfil", id);

            //        // Crear un adaptador para cargar los datos en el GridView
            //        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
            //        {
            //            // Crear un DataTable para almacenar los datos
            //            DataTable datos = new DataTable();

            //            // Cargar los datos en el DataTable
            //            adapter.Fill(datos);

            //            // Cargar los datos en el GridView
            //            gvPerfil.DataSource = datos;
            //            gvPerfil.DataBind();
            //        }
            //    }
            //}

        }
    }
}