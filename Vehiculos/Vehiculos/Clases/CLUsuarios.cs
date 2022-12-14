using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Vehiculos.Clases
{
    public class CLUsuarios
    {
        public static string Usuario { get; set; }
        public static string Clave { get; set; }
        public static string Nombre { get; set; }
        public static string Apellido { get; set; }





        public static int ValidarLogin(string Email, string Clave)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = CLConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ControlAcceso", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Usuario", Usuario));
                    cmd.Parameters.Add(new SqlParameter("@Clave", Clave));

                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                        }

                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }
    }
}