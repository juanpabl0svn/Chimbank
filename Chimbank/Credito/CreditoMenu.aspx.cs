using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Credito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCredito.Text = "$ " + Usuario.user.Credito.ToString("0,0.0", CultureInfo.InvariantCulture);



        }

        protected void Unnamed2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}