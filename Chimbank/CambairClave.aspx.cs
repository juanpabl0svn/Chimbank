using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;



namespace Chimbank
{
    public partial class CambiarClave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Conexion BD = new Conexion();


        //Tiene espacios en blanco
        public bool EsapciosVacios()
        {
            
            if (String.IsNullOrEmpty(txtNumeroCuenta.Text) || String.IsNullOrWhiteSpace(txtNumeroCuenta.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Ingrese su numero de cuenta ";
                return true;


            }
            else if (String.IsNullOrEmpty(txtNit.Text) || String.IsNullOrWhiteSpace(txtNit.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Ingrese su identificacion";
                return true;
            }
            else if (String.IsNullOrEmpty(txtCorreo.Text) || String.IsNullOrWhiteSpace(txtCorreo.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Ingrese su correo";
                return true;
            }
            else if (String.IsNullOrEmpty(txtClave.Text) || String.IsNullOrWhiteSpace(txtClave.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Ingrese su nueva contraseña";
                return true;
            }
            else if (String.IsNullOrEmpty(txtclaveConfirmar.Text) || String.IsNullOrWhiteSpace(txtclaveConfirmar.Text))
            {
                lblError.Visible = true;
                lblError.Text = "Confirme contraseña";
                return true;
            }
                return false;

        }

        //Verificar si la clave es segura
        public bool Contraseña_poco_segura()
        {
            bool numero = false;

            bool mayus = false;

            foreach (char car in txtClave.Text)
            {
                if (Char.IsUpper(car))
                {
                    mayus = true;
                }


            }
            foreach (char car in txtClave.Text)
            {
                if (Char.IsNumber(car))
                {
                    numero = true;
                }

            }
            if (txtClave.Text.Length < 7)
            {
                lblError.Visible = true;
                lblError.Text = "Contraseña poco segura, ingrese mas de 7 dígitos";

                return true;

            }
            if (!numero)
            {
                lblError.Visible = true;
                lblError.Text = "Contraseña poco segura, ingrese almenos un digito";

                return true;

            }
            if (!mayus)
            {
                lblError.Visible = true;
                lblError.Text = "Contraseña poco segura, ingrese almenos una mayuscula";

                return true;

            }


            return false;

        }

        //Cambiar clave
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;

            if (EsapciosVacios())
            {

            }
            else if (Contraseña_poco_segura())
            {

            }
            else if (txtClave.Text != txtclaveConfirmar.Text)
            {
                lblError.Visible = true;
                lblError.Text = "Las claves no son iguales";

            }
            else if (BD.CuentaYaExiste(int.Parse(txtNumeroCuenta.Text)) && BD.UsuarioYaExisteCorreo(txtCorreo.Text) && BD.UsuarioYaExisteId(txtNit.Text))
            {
                BD.Cambiar_contraseña(txtClave.Text, txtNumeroCuenta.Text, txtNit.Text, txtCorreo.Text);
                
                if (Usuario.user.Nit == null)
                {
                    BD.InfoUsuario(BD.BuscarUsuario(txtCorreo.Text, txtClave.Text));
                    Response.Redirect("/Inicio/Principal.aspx");
                }
                else
                {
                    Response.Redirect("/Inicio/Principal.aspx");
                }
                

            }


        }

        //Salir
        protected void btnSalir_Click(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");

            }
            else
            {
                Response.Redirect("/Ajustes/AjustesMenu.aspx");

            }
            

        }
    }
}
