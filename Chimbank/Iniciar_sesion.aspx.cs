using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Iniciar_sesion : System.Web.UI.Page
    {
        Conexion BD = new Conexion();


        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            if (String.IsNullOrEmpty(txtUsuario.Text) || String.IsNullOrWhiteSpace(txtUsuario.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Ingrese su usuario";


            }
            else if(String.IsNullOrEmpty(txtContraseña.Text) || String.IsNullOrWhiteSpace(txtContraseña.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Ingrese su contraseña";

            }
            else if (String.IsNullOrEmpty(BD.BuscarUsuario(txtUsuario.Text, txtContraseña.Text)))
            {
                lblError.Visible = true;
                lblError.Text = "Usuario o contraseña incorrectos";

            }
            else
            {
                BD.InfoUsuario(BD.BuscarUsuario(txtUsuario.Text, txtContraseña.Text));
                Response.Redirect("Main.aspx");

            }

        }
    }
}