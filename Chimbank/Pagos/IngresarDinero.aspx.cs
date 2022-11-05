using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class IngresarDinero : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            
        }

        //Ingresar dinero a la cuenta
        protected void btnIngresarDinero_Click(object sender, EventArgs e)
        {
            if (double.TryParse(txtDineroIngresar.Text, out _))
            {
                if (double.Parse(txtDineroIngresar.Text) < 10000000)
                {
                    conexion.AgregarDinero(double.Parse(txtDineroIngresar.Text));
                    lblError.Visible = true;
                    lblError.ForeColor = Color.Green;
                    lblError.Text = "Dinero correctamente ingresado";

                }
                else
                {
                    lblError.Visible = true;
                    lblError.ForeColor = Color.Red;
                    lblError.Text = "No se puede ingresar tal cantidad de dinero, menos de 10 millones";

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
}