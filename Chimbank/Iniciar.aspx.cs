using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Conexion BD = new Conexion();


        //Iniciar sesion
        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            if (String.IsNullOrEmpty(txtUsuario.Text) || String.IsNullOrWhiteSpace(txtUsuario.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Ingrese su usuario";


            }
            else if (String.IsNullOrEmpty(txtContraseña.Text) || String.IsNullOrWhiteSpace(txtContraseña.Text))
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
                Response.Redirect("/Inicio/Principal.aspx");

            }

        }
    }
}
