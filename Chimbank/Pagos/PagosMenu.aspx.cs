using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class PagosMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
        }

        protected void ImgbtnIngresarDinero_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Pagos/IngresarDinero.aspx");

        }
    }
}