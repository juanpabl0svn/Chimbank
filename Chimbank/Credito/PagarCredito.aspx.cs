using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class PagarCredito : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnAbonar_Click(object sender, EventArgs e)
        {
            if (Usuario.user.Credito < 0)
            {
                if (double.TryParse(txtDineroAbonar.Text, out _))
                {
                    if (double.Parse(txtDineroAbonar.Text) >= Usuario.user.Credito)
                    {
                        double extra = double.Parse(txtDineroAbonar.Text) - Usuario.user.Credito ;

                        double pago = double.Parse(txtDineroAbonar.Text) - extra;

                        conexion.PagarCredito(pago, 0);

                    }
                    else
                    {
                        double nuevo_credito = Usuario.user.Credito - double.Parse(txtDineroAbonar.Text);

                        conexion.PagarCredito(double.Parse(txtDineroAbonar.Text), nuevo_credito);

                    }
                 

                }

            }

        }
    }
}