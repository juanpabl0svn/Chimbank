using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
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

        //Imprime los datos enviados
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Random ran = new Random();

                int numero = ran.Next(100, 1000);
                string date = DateTime.UtcNow.ToString("MM-dd-yyyy");
                string time = DateTime.Now.ToString("h:mm:ss tt");

                escribir.AppendLine($"Valor del pago ----- {voucherList[3]}");
                escribir.AppendLine($"");
                escribir.AppendLine($"Destinatario ------ {voucherList[0]} ---- {voucherList[2]}");
                escribir.AppendLine($"Proveedor ---- {Usuario.user.Numero_cuenta} ---- {Usuario.user.Nombre} ");
                escribir.AppendLine($"");
                escribir.AppendLine($"Realizado el {date} a las {time}");
                escribir.AppendLine("");
                escribir.AppendLine("Gracias por utilizar Chimbank para realizar sus transferencia, si tiene alguna");
                escribir.AppendLine("");
                escribir.AppendLine($"Comprobante # 0000{numero}");

                txtVoucher.Text = escribir.ToString();

                voucherList.Clear();

            }
            catch
            {
                Response.Redirect("/Inicio/Principal.aspx");

            }
                
            
            




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Inicio/Principal.aspx");
        }
    }
}