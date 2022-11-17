using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Movements : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();

        //Imprime los moviminentos guardados en la base de datos    HDU_15
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            else
            {
                if (txtboxMovimientos.Text == "")
                {
                    txtboxMovimientos.Text = conexion.Transacciones().ToString();

                }
                

            }
            


        }
    }
}