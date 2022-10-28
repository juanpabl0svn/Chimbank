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
        protected void Page_Load(object sender, EventArgs e)
        {
            txtboxMovimientos.Text = conexion.Transacciones().ToString();


        }
    }
}