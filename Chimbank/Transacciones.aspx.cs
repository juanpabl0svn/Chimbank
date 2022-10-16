using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Conexion conectar = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder nuevo = conectar.Transacciones();
            txtTransacciones.Text =  nuevo.ToString();

        }

    }
}