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

        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> lista = new List<string>();

            var cuentas_guardadas = conectar.MostrarFavoritos();


            foreach (ListItem cuenta in ddlCuentas.Items)
            {
                lista.Add(cuenta.ToString());

            }

            foreach(string cuenta in cuentas_guardadas)
            {
                if (!lista.Contains(cuenta))
                {
                    ddlCuentas.Items.Add(cuenta);

                }

            }

            lista.Clear();



        }

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

        public bool Espacios_vacios()
        {
            return false;

        }

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
               

            }
            else
            {
                if (chGuardar.Checked)
                {
                    if (conectar.CuentaExisteGuardar(txtNumeroCuenta.Text, txtNit.Text))
                    {
                        conectar.GuardarFavorito(txtNumeroCuenta.Text, txtNit.Text, txtNombre.Text);

                    }
                        

                }

                conectar.Hacer_transferencia(txtNumeroCuenta.Text, double.Parse(txtValor.Text));

                Voucher.voucherList.Add(txtNumeroCuenta.Text);
                Voucher.voucherList.Add(txtNit.Text);
                Voucher.voucherList.Add(txtNombre.Text);
                Voucher.voucherList.Add(txtValor.Text);

                Response.Redirect("/Transferencia/Comprobante.aspx");


            }



        }
    }
}