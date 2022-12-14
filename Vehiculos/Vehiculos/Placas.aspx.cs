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
    public partial class WebForm2 : System.Web.UI.Page
    {
        public SqlConnection Conexion { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Conexion = CLConexion.obtenerConexion();
            SqlCommand cmd3 = new SqlCommand("ConsultarPlaca", Conexion);
            SqlDataReader lector3 = cmd3.ExecuteReader();
            GridView1.DataSource = lector3;
            GridView1.DataBind();
            Conexion.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            Placas.NumPlaca = TNum.Text;
            Placas.IDPlaca = TUsuario.Text;
            Placas.Monto = TPrecio.Text;
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarPlaca", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NumPlaca", Placas.NumPlaca));
                    cmd.Parameters.Add(new SqlParameter("@Monto", Placas.IDPlaca));
                    cmd.Parameters.Add(new SqlParameter("@IdUsuario", Placas.Monto));
                    SqlDataReader Reade = cmd.ExecuteReader();
                    Label1.Text = "Registro correcto";

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                Conn.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            Placas.NumPlaca = TNum.Text;
            Placas.IDPlaca = TUsuario.Text;
            Placas.Monto = TPrecio.Text;
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ActualizarPlaca", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NumPlaca", Placas.NumPlaca));
                    cmd.Parameters.Add(new SqlParameter("@Monto", Placas.IDPlaca));
                    cmd.Parameters.Add(new SqlParameter("@IdUsuario", Placas.Monto));
                    SqlDataReader Reade = cmd.ExecuteReader();
                    Label1.Text = "Registro correcto";

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                Conn.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            Placas.NumPlaca = TNum.Text;
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("BorraPlaca", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NumPlaca", Placas.NumPlaca));
                    SqlDataReader Reade = cmd.ExecuteReader();
                    Label1.Text = "Registro correcto";

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                Conn.Close();
            }
        }
    }
    }


    


       
            
          

        
    



            
    