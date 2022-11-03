using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            else
            {

                PrecioLabel.Text = "$ " + Usuario.user.Dinero.ToString("0,0.0", CultureInfo.InvariantCulture);
                lblPresentar.Text = "Bienvenido de nuevo " + Usuario.user.Nombre.ToString() + " " + Usuario.user.Apellido.ToString();
                lblNumeroCuetna.Text = "Numero de cuenta " + Usuario.user.Numero_cuenta.ToString();

            }

        }



        protected void imgbtnHacerTransfer_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Transferencia/HacerTransferencia.aspx");

        }

        protected void imgbtnVerMovimientos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Transferencia/Movimientos.aspx");

        }

        protected void imgbtnCredito_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Credito/PagarCredito.aspx");

        }
    }
}