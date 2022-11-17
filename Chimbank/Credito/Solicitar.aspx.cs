using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class AbonarCredito : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();

        static Dictionary <string, double> interes = new Dictionary<string, double>() { { "12", 0.91 }, { "24",1.02}, {"36",1.13 } };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            



        }

        //Pedir credito    HDU_14
        protected void btnAdquirirCredito_Click(object sender, EventArgs e)
        {
            
            if (conexion.ValorTransferencias() >= 10000000 || Usuario.user.Dinero >= 10000000)
            {
                if (Usuario.user.Credito > 0)
                {
                    lblError.Visible = true;
                    lblError.ForeColor = Color.Red;
                    lblError.Text = "Tiene activo un credito actualmente, vuelva cuando no este activo";

                }
                else
                {
                    if (double.TryParse(txtvalorCredito.Text, out _))
                    {

                        if (double.Parse(txtvalorCredito.Text) >= 100000000)
                        {
                            lblError.Visible = true;
                            lblError.ForeColor = Color.Red;
                            lblError.Text = "El banco no tiene aun tantos recursos para prestar, intente un valor menor a $100´000.000";

                        }
                        else if (double.Parse(txtvalorCredito.Text) < 0)
                        {
                            lblError.Visible = true;
                            lblError.ForeColor = Color.Red;
                            lblError.Text = "Valor negativo";

                        }
                        else 
                        {
                            double nuevo_credito = double.Parse(txtvalorCredito.Text) + (double.Parse(txtvalorCredito.Text) * interes[ddlMeses.SelectedItem.Text]);

                            conexion.HacerCredito(nuevo_credito, double.Parse(txtvalorCredito.Text));

                            lblError.Visible = true;

                            lblError.ForeColor = Color.Green;

                            lblError.Text = "Credito exitoso";

                            Usuario.user.Credito = nuevo_credito;

                            Usuario.user.Dinero += double.Parse(txtvalorCredito.Text);
                        }
                        

                    }
                    else
                    {
                        lblError.Visible = true;
                        lblError.ForeColor = Color.Red;

                        lblError.Text = "Ingrese un valor valido";

                        

                    }

                }
                

            }
            else
            {
                lblError.Visible = true;
                lblError.ForeColor = Color.Red;
                
                lblError.Text = "No has tenido mas de $10´000.000 en tu cuenta como minimo";

            }

        }

    }
}