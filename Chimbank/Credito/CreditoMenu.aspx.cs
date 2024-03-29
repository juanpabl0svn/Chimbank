﻿using System;
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
            if (Usuario.user.Nit == null)
            {
                Response.Redirect("/Iniciar.aspx");
            }
            else
            {
                
                lblCredito.Text = "$ " + Usuario.user.Credito.ToString("0,0.0", CultureInfo.InvariantCulture);
            }

        }

        protected void Unnamed2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Credito/PagarCredito.aspx");

        }

        protected void btnPedirCredito_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Credito/Solicitar.aspx");

        }
    }
}