using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class New_transfer : System.Web.UI.Page
    {
        

        Conexion conectar = new Conexion();

        //Agrega las cuentas favoritas del usuario
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            else
            {


                List<string> lista = new List<string>();

                var cuentas_guardadas = conectar.MostrarFavoritos();


                foreach (ListItem cuenta in ddlCuentas.Items)
                {
                    lista.Add(cuenta.ToString());

                }

                foreach (string cuenta in cuentas_guardadas)
                {
                    if (!lista.Contains(cuenta))
                    {
                        ddlCuentas.Items.Add(cuenta);

                    }

                }

                lista.Clear();
            }



        }

        //Busca la info de la cuenta guardada
        protected void btnBuscarInfo_Click(object sender, EventArgs e)
        {
            if(ddlCuentas.SelectedItem.Text == "Seleccionar")
            {

            }
            else
            {
                var info = conectar.InfousuarioFav(ddlCuentas.SelectedItem.Text);

                txtNumeroCuenta.Text = info[0];
                txtNit.Text = info[1];
                txtNombre.Text = info[2];

            }
            


        }

        //Revisa si tiene espacios en blanco
        public bool Espacios_vacios()
        {
            if (String.IsNullOrEmpty(txtNit.Text) || String.IsNullOrWhiteSpace(txtNit.Text))
            {
                lblErrorNit.Visible = true;
                lblErrorNit.Text = "Ingrese nit";
                return true;

            }
            else if (String.IsNullOrEmpty(txtNumeroCuenta.Text) || String.IsNullOrWhiteSpace(txtNumeroCuenta.Text))
            {
                lblErrorNumeroCuenta.Visible = true;
                lblErrorNumeroCuenta.Text = "Ingrese numero de cuenta";
                return true;

            }
            else if (String.IsNullOrEmpty(txtNombre.Text) || String.IsNullOrWhiteSpace(txtNombre.Text))
            {
                lblErrorNombre.Visible = true;
                lblErrorNombre.Text = "Ingrese nombre del propietario de la cuenta";
                return true;

            }
            else if (String.IsNullOrEmpty(txtValor.Text) || String.IsNullOrWhiteSpace(txtValor.Text))
            {
                lblErrorNit.Visible = true;
                lblErrorNit.Text = "Ingrese valor de la transferencia";
                return true;

            }

            return false;

        }

        //Realiza la transferencia
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (Espacios_vacios())
            {

            }
            else if(!conectar.CuentaExisteTransferir(txtNumeroCuenta.Text,txtNit.Text))
            {
                lblErrorNumeroCuenta.Visible = true;
                lblErrorNumeroCuenta.Text = "No se encontro la cuenta";


            }
            else if (double.Parse(txtValor.Text) > Usuario.user.Dinero || double.Parse(txtValor.Text) <= 0)
            {
                lblErrorValor.Visible = true;
                lblErrorValor.Text = "Valor no valido";

            }
            else
            {
                if (chGuardar.Checked)
                {
                    if (!conectar.CuentaExisteGuardar(txtNumeroCuenta.Text, txtNit.Text))
                    {
                        conectar.GuardarFavorito(txtNumeroCuenta.Text, txtNit.Text, txtNombre.Text);

                    }
                        

                }

                conectar.Hacer_transferencia(txtNumeroCuenta.Text, double.Parse(txtValor.Text));

                Comprobante.voucherList.Add(txtNumeroCuenta.Text);
                Comprobante.voucherList.Add(txtNit.Text);
                Comprobante.voucherList.Add(txtNombre.Text);
                Comprobante.voucherList.Add(txtValor.Text);

                Response.Redirect("/Transferencia/Comprobante.aspx");


            }



        }
    }
}