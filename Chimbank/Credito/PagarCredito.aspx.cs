using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class PagarCredito : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();

        //Trae la informacion del usuario
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            else
            {
                lblCredito.Text = "$ " + Usuario.user.Credito.ToString("0,0.0", CultureInfo.InvariantCulture);

                lblDinero.Text = "$ " + Usuario.user.Dinero.ToString("0,0.0", CultureInfo.InvariantCulture);
            }




        }

        //Pagar credito
        protected void btnAbonar_Click(object sender, EventArgs e)
        {
            if (Usuario.user.Credito > 0)
            {
                if (double.TryParse(txtDineroAbonar.Text, out _))
                {
                    if (double.Parse(txtDineroAbonar.Text) >= Usuario.user.Credito && double.Parse(txtDineroAbonar.Text) <= Usuario.user.Dinero)
                    {
                        double extra = double.Parse(txtDineroAbonar.Text) - Usuario.user.Credito ;

                        double pago = double.Parse(txtDineroAbonar.Text) - extra;

                        conexion.PagarCredito(pago, 0);

                        lblError.Visible = true;
                        lblError.ForeColor = Color.Green;
                        lblError.Text = "Credito pagado en su totalidad";

                        Usuario.user.Dinero -= pago;
                        Usuario.user.Credito = 0;

                        lblCredito.Text = "$ " + Usuario.user.Credito.ToString("0,0.0", CultureInfo.InvariantCulture);

                        lblDinero.Text = "$ " + Usuario.user.Dinero.ToString("0,0.0", CultureInfo.InvariantCulture);

                    }
                    else if (double.Parse(txtDineroAbonar.Text) < Usuario.user.Credito && double.Parse(txtDineroAbonar.Text) <= Usuario.user.Dinero)
                    {
                        double nuevo_credito = Usuario.user.Credito - double.Parse(txtDineroAbonar.Text);

                        conexion.PagarCredito(double.Parse(txtDineroAbonar.Text), nuevo_credito);

                        lblError.Visible = true;
                        lblError.ForeColor = Color.Green;
                        lblError.Text = "Cuota pagada con exito";

                        Usuario.user.Dinero -= double.Parse(txtDineroAbonar.Text);
                        Usuario.user.Credito = nuevo_credito;

                        lblCredito.Text = "$ " + Usuario.user.Credito.ToString("0,0.0", CultureInfo.InvariantCulture);

                        lblDinero.Text = "$ " + Usuario.user.Dinero.ToString("0,0.0", CultureInfo.InvariantCulture);

                    }
                    else
                    {
                        lblError.Visible = true;
                        lblError.ForeColor = Color.Red;
                        lblError.Text = "No tienes esa cantidad de dinero";

                    }


                }
                else
                {
                    lblError.Visible = true;
                    lblError.ForeColor = Color.Red;
                    lblError.Text = "Ingrese valor valido";
                }

            }
            else
            {
                lblError.Visible = true;
                lblError.ForeColor = Color.Red;
                lblError.Text = "No tiene creditos activos ";
            }

        }
    }
}