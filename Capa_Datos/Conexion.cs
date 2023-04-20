using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;

namespace Capa_Datos
{
    public class Conexion
    {

        //public static string cn = ConfigurationManager.ConnectionStrings["DBTrustin"].ToString();

        public static string cn = "Server=tiusr25pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019;Database=tiusr25pl_TrustIn;User Id=warayar;Password=warayar@!!!;";
        public static SqlConnection Open()
        {
            SqlConnection conn = new SqlConnection(cn);
            conn.Open();
            return conn;
        }

        public static SqlConnection Close()
        {
            SqlConnection conn = new SqlConnection(cn);
            conn.Close();
            return conn;
        }

    }
}
