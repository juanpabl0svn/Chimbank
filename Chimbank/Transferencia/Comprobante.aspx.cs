using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chimbank
{
    public partial class Voucher : System.Web.UI.Page
    {
        public static List<string> voucherList = new List<string>();

        StringBuilder escribir = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            string date = DateTime.UtcNow.ToString("MM-dd-yyyy");
            string time = DateTime.Now.ToString("h:mm:ss tt");

            escribir.AppendLine($"Valor del pago ----- {voucherList[3]}");
            escribir.AppendLine($"");
            escribir.AppendLine($"Destinatario ------ {voucherList[0]} ---- {voucherList[2]}");
            escribir.AppendLine($"Proveedor ---- {Usuario.user.Numero_cuenta} ---- {Usuario.user.Nombre} ");
            escribir.AppendLine($"");
            escribir.AppendLine($"Realizado el {date} a las {time}");


            txtVoucher.Text = escribir.ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Inicio/Principal.aspx");
        }
    }
}