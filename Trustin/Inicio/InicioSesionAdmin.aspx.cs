using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Trustin.Inicio
{
    public partial class InicioSesionAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
            SqlConnection sqlConectar = new SqlConnection(cn);
            SqlCommand cmd = new SqlCommand("SP_LoginAdmin", sqlConectar)
            { CommandType = CommandType.StoredProcedure };
            cmd.Connection.Open();
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = txtEmail.Text;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = txtPassword.Text;



            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())

            {

                Session["usuariologueado"] = txtEmail.Text;

                Response.Redirect("/Admin/Admin_Dashboard.aspx");

            }
            else
            {
                MessageBox.Show("Usuario inválido.Verifique su email o contraseña!");
            }

            cmd.Connection.Close();

        }
    
    }
}