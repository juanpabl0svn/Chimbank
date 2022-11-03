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

        <br />
        <br />
        <br />
  
        
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td align="center"><asp:Label runat="server" CssClass="Milabel" Text="Transacciones"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <br />
        <br />
        <br />

        <div>
            <table style="border-style: outset;width:80%; background-color: #008080;" align="center" >
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
                        <asp:ImageButton ID="imgbtnVerMovimientos" runat="server" Height="111px" ImageUrl="~/Diseños/ImgMovimientos.png" OnClick="imgbtnVerMovimientos_Click" Width="130px" ImageAlign="NotSet" />
                    </td>
                    <td align="center">
                        
                    </td>
                </tr>
                <tr>
                    <td align="center">&nbsp;<asp:Label runat="server" CssClass="text" Text="Hacer transacción"></asp:Label></td>
                    <td align="center">&nbsp;<asp:Label runat="server" CssClass="text" Text="Ver moviminetos"></asp:Label></td>
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
