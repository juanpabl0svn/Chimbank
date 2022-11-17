using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class TermsCondiaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Volver a registrar usuario  HDU_7.1
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Registrar/RegistrarMenu.aspx");
        }


    }
}