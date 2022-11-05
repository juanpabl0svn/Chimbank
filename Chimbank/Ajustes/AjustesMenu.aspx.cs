using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Config : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            



        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Usuario.user = new Usuario();
            Response.Redirect("/Iniciar.aspx");

        }
    }
}