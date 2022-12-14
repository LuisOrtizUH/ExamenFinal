using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vehiculos.Clases;

namespace Vehiculos
{
    public partial class INDEX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            CLUsuarios.Usuario = TUsuario.Text;
            CLUsuarios.Clave = TContra.Text;

            if (CLUsuarios.ValidarLogin(CLUsuarios.Usuario, CLUsuarios.Clave) > 0)
            {
                Response.Redirect("Usuarios.aspx");
            }
            else
            {


            }
        }
    }
}