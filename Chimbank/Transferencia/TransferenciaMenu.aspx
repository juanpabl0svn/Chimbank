<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransferenciaMenu.aspx.cs" Inherits="Chimbank.Transfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href ="/Diseños/StyleSheet2.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <ul class="menu" align="center">  
        <li><a href ="/Inicio/Principal.aspx">Inicio</a></li>
        <li><a href ="/Transferencia/TransferenciaMenu.aspx">Transacciones</a></li>
        <li><a href ="/Pagos/PagosMenu.aspx">Pagar</a></li>
        <li><a href ="/Credito/CreditoMenu.aspx">Prestamos</a></li>
        <li><a href ="/Ajustes/AjustesMenu.aspx">Ajustes</a></li>

    </ul>
    <form id="form1" runat="server">
        <div>
            <table style="width:80%; background-color: #008080;" align="center">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="imgbtnHacerTransfer" runat="server" Height="111px" ImageUrl="~/Diseños/ImgTransferir.png" OnClick="imgbtnHacerTransfer_Click" Width="129px" />
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="imgbtnVerMovimientos" runat="server" Height="120px" ImageUrl="~/Design/ImgMovimientos.png" OnClick="imgbtnVerMovimientos_Click" Width="212px" />
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImageButton3" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
