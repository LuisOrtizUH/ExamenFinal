using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vehiculos.Clases;

namespace Vehiculos
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public SqlConnection Conexion { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GReporte_Click(object sender, EventArgs e)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            Placas.NumPlaca = TReporte.Text;
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("Reporte", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NumPlaca", Placas.NumPlaca));
                    SqlDataReader Reade = cmd.ExecuteReader();
                    GridView1.DataSource = Reade;
                    GridView1.DataBind();
                    
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
               
            }
            finally
            {
                Conn.Close();
            }
        }

      
    }
}