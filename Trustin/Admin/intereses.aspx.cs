using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Data.Entity;
using Button = System.Web.UI.WebControls.Button;

namespace Trustin.Admin
{
    public partial class intereses : System.Web.UI.Page
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
               
                    // Crea una conexión a la base de datos
                    SqlConnection conexion = new SqlConnection("Server = tiusr25pl.cuc - carrera - ti.ac.cr\\MSSQLSERVER2019; Database = tiusr25pl_TrustIn; User Id = warayar; Password = warayar@!!!; ");

                // Crea un objeto Command para ejecutar el procedimiento almacenado
                SqlCommand comando = new SqlCommand("SP_MOSTRARCATEGORIA", conexion);
                comando.CommandType = CommandType.StoredProcedure;

                try
                {
                    // Abre la conexión a la base de datos
                    conexion.Open();

                    // Ejecuta el procedimiento almacenado y obtiene un objeto DataReader
                    SqlDataReader reader = comando.ExecuteReader();

                    // Recorre los registros del DataReader y agrega cada categoría como un ListItem en el DropDownList
                    while (reader.Read())
                    {
                        ListItem item = new ListItem(reader["Categoria"].ToString());
                        ddlCategorias.Items.Add(item);
                    }

                    // Cierra el DataReader
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Maneja cualquier excepción que pueda ocurrir
                    Console.WriteLine("Error: " + ex.Message);
                }
                finally
                {
                    // Cierra la conexión a la base de datos
                    conexion.Close();
                }
            }
            

            if (!IsPostBack)
            {
                
                SqlConnection connection = new SqlConnection(cn);
                string query = "  select i.id_interes,c.Categoria,categoria_nombre from intereses_Categoria i, Categorias c where i.id_Categoria = c.idCategoria";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                gvCategoria.DataSource = dataTable;
                gvCategoria.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCategoria.PageIndex = e.NewPageIndex;
            LoadGridViewData(e.NewPageIndex);

        }

        protected void btnAgregarInteres_Click(object sender, EventArgs e)
        {
            string script = "window.open('/Trustin_3Final/Admin/AgregarInteres.aspx', 'Agregar Interes', 'width=500,height=500');";
            ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", script, true);
        }
        public DataTable cargaDeporte(string terminoBusqueda)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection sqlConectar = new SqlConnection(cn))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CATEGORIADEPORTE", sqlConectar))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@idInteres", SqlDbType.Int).Value = Convert.ToInt32(terminoBusqueda);
                    cmd.Connection.Open();

                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable tablaResultados = new DataTable();
                    tablaResultados.Load(reader);

                    cmd.Connection.Close();

                    return tablaResultados;
                }
            }
        }
        public DataTable cargaDiversion(string terminoBusqueda)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection sqlConectar = new SqlConnection(cn))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CATEGORIADEPORTE", sqlConectar))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@idInteres", SqlDbType.Int).Value = Convert.ToInt32(terminoBusqueda);
                    cmd.Connection.Open();

                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable tablaResultados = new DataTable();
                    tablaResultados.Load(reader);

                    cmd.Connection.Close();

                    return tablaResultados;
                }
            }
        }
        public DataTable cargaComida(string terminoBusqueda)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection sqlConectar = new SqlConnection(cn))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CATEGORIADEPORTE", sqlConectar))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@idInteres", SqlDbType.Int).Value = Convert.ToInt32(terminoBusqueda);
                    cmd.Connection.Open();

                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable tablaResultados = new DataTable();
                    tablaResultados.Load(reader);

                    cmd.Connection.Close();

                    return tablaResultados;
                }
            }
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            // Obtener el ID_Interes del registro a eliminar
            Button btn = (Button)sender;
            int rowIndex = Convert.ToInt32(btn.CommandArgument);
            GridViewRow row = gvCategoria.Rows[rowIndex];
            int ID_Interes;
            if (int.TryParse(row.Cells[1].Text, out ID_Interes))
            {
                // Crear y configurar la conexión a la base de datos
                string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("SP_ELIMINARINTERES", connection);
                    command.CommandType = CommandType.StoredProcedure;

                    // Agregar los parámetros del procedimiento almacenado
                    command.Parameters.AddWithValue("@IDinteres", ID_Interes);

                    // Abrir la conexión y ejecutar el procedimiento almacenado
                    connection.Open();
                    command.ExecuteNonQuery();
                }

                // Actualizar el GridView
                BindGridView();
            }
        }


        private void BindGridView()
        {
            // Crear y configurar la conexión a la base de datos
            string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT id_interes, id_Categoria, categoria_nombre FROM intereses_Categoria", connection);
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);
                gvCategoria.DataSource = dataTable;
                gvCategoria.DataBind();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string opcionSeleccionada = ddlCategorias.SelectedValue;
            string terminoBusqueda = txtbuscar.Text;

            if (opcionSeleccionada == "1")
            {
                DataTable tablaResultados = cargaDeporte(terminoBusqueda);
                gvCategoria.DataSource = tablaResultados;
                gvCategoria.DataBind();
            }
            else if (opcionSeleccionada == "2")
            {
                DataTable tablaResultados = cargaDiversion(terminoBusqueda);
                gvCategoria.DataSource = tablaResultados;
                gvCategoria.DataBind();
            }
            else if(opcionSeleccionada == "3") 
                {
                    DataTable tablaResultados = cargaComida(terminoBusqueda);
                    gvCategoria.DataSource = tablaResultados;
                    gvCategoria.DataBind();
                } 

        }

        private void LoadGridViewData(int pageIndex)
        {
            string connectionString = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            string selectCommand = "select i.id_interes,c.Categoria,categoria_nombre from intereses_Categoria i, Categorias c where i.id_Categoria = c.idCategoria";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(selectCommand, connection))
                {
                    DataTable table = new DataTable();
                    adapter.Fill(table);

                    // Set the DataSource of the GridView to the DataTable
                    gvCategoria.DataSource = table;

                    // Set the PageIndex of the GridView to the new value
                    gvCategoria.PageIndex = pageIndex;

                    // Bind the data to the GridView
                    gvCategoria.DataBind();
                }
            }
        }




    }
}