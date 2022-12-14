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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public SqlConnection Conexion { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            CLUsuarios.Usuario = TCCorreo.Text;
            CLUsuarios.Clave = TCOUsuarios.Text;
            CLUsuarios.Nombre = TNomUsu.Text;
            CLUsuarios.Apellido = TAUsuarios.Text;
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarUsuarios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Usuario", CLUsuarios.Usuario));
                    cmd.Parameters.Add(new SqlParameter("@Clave", CLUsuarios.Clave));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", CLUsuarios.Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Apellido", CLUsuarios.Apellido));
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
            CLUsuarios.Usuario = TCCorreo.Text;
            CLUsuarios.Clave = TCOUsuarios.Text;
            CLUsuarios.Nombre = TNomUsu.Text;
            CLUsuarios.Apellido = TAUsuarios.Text;
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ActualizarUsuarios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Usuario", CLUsuarios.Usuario));
                    cmd.Parameters.Add(new SqlParameter("@Clave", CLUsuarios.Clave));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", CLUsuarios.Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Apellido", CLUsuarios.Apellido));
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
            CLUsuarios.Usuario = TCCorreo.Text;
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("BorrarUsuraios", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Usuario", CLUsuarios.Usuario)); 
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Conexion = CLConexion.obtenerConexion();
            SqlCommand cmd3 = new SqlCommand("ConsultarUsuarios", Conexion);
            SqlDataReader lector3 = cmd3.ExecuteReader();
            GridView1.DataSource = lector3;
            GridView1.DataBind();
            Conexion.Close();
        }
    }
    }
