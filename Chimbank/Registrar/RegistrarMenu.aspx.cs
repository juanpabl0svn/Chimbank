using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Sign_up : System.Web.UI.Page
    {
        Random random = new Random();

        Conexion BD = new Conexion();



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Crea un numero de cuenta que no haya sido registrado
        public string Generar_cuenta()
        {
            int numeroCuenta;

            do
            {
                numeroCuenta = random.Next(1000000, 1009999);

            } while (BD.CuentaYaExiste(numeroCuenta));

            return Convert.ToString(numeroCuenta);

        }

        //Retorna valor de verdad de si hay espacios en blancos
        public bool Espacios_blanco()
        {
            if (String.IsNullOrEmpty(txtId.Text) || String.IsNullOrWhiteSpace(txtId.Text))
            {
                lblErrorYaexiste.Visible = true;
                lblErrorYaexiste.Text = "Ingrese su NIT";
                return true;

            }
            else if (String.IsNullOrEmpty(txtNombre.Text) || String.IsNullOrWhiteSpace(txtNombre.Text))
            {
                lblErrorNombreVacio.Visible = true;
                lblErrorNombreVacio.Text = "Ingrese su nombre";
                return true;
            }
            else if (String.IsNullOrEmpty(txtApellido.Text) || String.IsNullOrWhiteSpace(txtApellido.Text))
            {
                lblErrorApellidoVacio.Visible = true;
                lblErrorApellidoVacio.Text = "Ingrese su apellido";
                return true;
            }
            else if (String.IsNullOrEmpty(txtCorreo.Text) || String.IsNullOrWhiteSpace(txtCorreo.Text))
            {
                lblErrorCorreoInvalido.Visible = true;
                lblErrorCorreoInvalido.Text = "Ingrese su correo de gmail";
                return true;
            }
            else if (String.IsNullOrEmpty(txtContraseña.Text) || String.IsNullOrWhiteSpace(txtContraseña.Text))
            {
                lblErrorContraseña.Visible = true;
                lblErrorContraseña.Text = "Ingrese su contraseña";
                return true;
            }
            else if (String.IsNullOrEmpty(txtConfirmarContraseña.Text) || String.IsNullOrWhiteSpace(txtConfirmarContraseña.Text))
            {
                lblErrorContraseñaConfirmar.Visible = true;
                lblErrorContraseñaConfirmar.Text = "Ingrese de nuevo su contraseña";
                return true;
            }
            else
            {
                return false;
            }


        }

        //Esconde etiquetas de error
        public void Esconder_etiquetas()
        {
            lblErrorYaexiste.Visible = false;
            lblErrorNombreVacio.Visible = false;
            lblErrorApellidoVacio.Visible = false;
            lblErrorCorreoInvalido.Visible = false;
            lblErrorContraseña.Visible = false;
            lblErrorContraseñaConfirmar.Visible = false;
            lblErrorTC.Visible = false; 

        }

        //Si el correo no es de gmail, no puede registrarse
        public bool Correo_invalido()
        {
            string correo = txtCorreo.Text;

            if (correo.ToLower().Contains("@gmail.com"))
            {
                return false;
            }

            return true;


        }

        //Si la contraseña no tiene ciertos parametros de seguridad, no puede registrarse
        public bool Contraseña_poco_segura()
        {
            bool numero = false;

            bool mayus = false;

            foreach (char car in txtContraseña.Text)
            {
                if (Char.IsUpper(car))
                {
                    mayus = true;
                }


            }
            foreach (char car in txtContraseña.Text)
            {
                if (Char.IsNumber(car))
                {
                    numero = true;
                }

            }
            if (txtContraseña.Text.Length < 7)
            {
                lblErrorContraseña.Visible = true;
                lblErrorContraseña.Text = "Contraseña poco segura, ingrese mas de 7 dígitos";

                return true;

            }
            if (!numero)
            {
                lblErrorContraseña.Visible = true;
                lblErrorContraseña.Text = "Contraseña poco segura, ingrese almenos un digito";

                return true;

            }
            if (!mayus)
            {
                lblErrorContraseña.Visible = true;
                lblErrorContraseña.Text = "Contraseña poco segura, ingrese almenos una mayuscula";

                return true;

            }


            return false;

        }

        //Registrar nuevo usuario
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Esconder_etiquetas();

            if (Espacios_blanco())
            {

            }
            else if (!int.TryParse(txtId.Text, out _))
            {
                lblErrorYaexiste.Visible = true;
                lblErrorYaexiste.Text = "Ingrese un NIT valido";
            }
            else if (BD.UsuarioYaExisteId(txtId.Text))
            {
                lblErrorYaexiste.Visible = true;
                lblErrorYaexiste.Text = "Ya existe un usuario con esa identificacion";

            }
            else if (Correo_invalido())
            {
                lblErrorCorreoInvalido.Visible = true;
                lblErrorCorreoInvalido.Text = "Ingrese un correo valido de gmail";
            }
            else if (BD.UsuarioYaExisteCorreo(txtCorreo.Text))
            {
                lblErrorYaexiste.Visible = true;
                lblErrorYaexiste.Text = "Ya existe un usuario con ese correo";

            }
            else if (Contraseña_poco_segura())
            {

            }
            else if (txtContraseña.Text != txtConfirmarContraseña.Text)
            {
                lblErrorContraseñaConfirmar.Visible = true;
                lblErrorContraseñaConfirmar.Text = "Contraseñas no coinciden";
            }
            else if (!chConfirmar.Checked)
            {
                lblErrorTC.Visible = true;
                lblErrorTC.Text = "Acepte terminos y condiciones";


            }
            else
            {

                BD.Insertar(txtId.Text, Generar_cuenta(), txtNombre.Text, txtApellido.Text, txtCorreo.Text, txtContraseña.Text);
                Borrar_casillas();
            }


        }

        //Elimina los datos ingresados por el usuario
        public void Borrar_casillas()
        {
            txtId.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreo.Text = "";

        }

        //Vuelve a la pagina de inicio
        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Iniciar.aspx");
        }


    }
}