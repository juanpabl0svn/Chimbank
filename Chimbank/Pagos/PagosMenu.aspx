<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagosMenu.aspx.cs" Inherits="Chimbank.PagosMenu" %>

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
        <table style="width:5%;" align="center">
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td align="center">&nbsp;<asp:Label runat="server" CssClass="Milabel" Text="Pagos"></asp:Label></td>
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
        <br />
        <br />
        <br />
        <div>
            <table style="border-style: outset;width:60%; background-color: #008080;" align="center">
             <tr>
                 <td >&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td align="center">
                     <asp:ImageButton runat="server" ID="ImgbtnIngresarDinero" Height="111px" Width="147" ImageUrl="~/Diseños/ImgIngresarDinero.png" OnClick="ImgbtnIngresarDinero_Click"></asp:ImageButton></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td align="center"><asp:Label ID="Label1" CssClass="text" runat="server" Text="Ingresar dinero"></asp:Label></td>
                 <td>&nbsp;</td>
             </tr>
                
         </table>
        </div>
    </form>
</body>
</html>
