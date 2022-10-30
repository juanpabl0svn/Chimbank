using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Transfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtnHacerTransfer_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Transferencia/HacerTransferencia.aspx");

        }

        protected void imgbtnVerMovimientos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Transferencia/Movimientos.aspx");

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}