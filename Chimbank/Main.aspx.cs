using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.NIT == null)
            {
                Response.Redirect("Iniciar_sesion.aspx");
            }
            else
            {

                PrecioLabel.Text = "$ " + Usuario.user.DineroInicial.ToString("0,0.0", CultureInfo.InvariantCulture) ;
                lblPresentar.Text = "Bienvenido de nuevo " + Usuario.user.Nombre.ToString() + " " + Usuario.user.Apellido.ToString();
                lblNumeroCuetna.Text = "Numero de cuenta " + Usuario.user.NumeroCuenta.ToString();

            }

        }
    }
}