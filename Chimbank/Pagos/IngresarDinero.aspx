<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresarDinero.aspx.cs" Inherits="Chimbank.IngresarDinero" %>

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
                 <td align="center">&nbsp;<asp:Label runat="server" CssClass="Milabel" Text="Ingresar dinero"></asp:Label></td>
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
            <table style="border-style: outset;width:60%; background-color: #008080;" align="center">
             <tr>
                 <td >&nbsp;<asp:Label runat="server"  Text="Dinero a ingresar: "></asp:Label></td>
                 <td>&nbsp;<asp:TextBox runat="server" ID="txtDineroIngresar"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td></td>
                 <td>&nbsp;<asp:Label runat="server" ForeColor="Red" Text="Label" Visible="False" ID="lblError"></asp:Label></td>
             </tr>
             <tr>
                 <td>&nbsp;<asp:Button runat="server" CssClass="button" Text="Ingresar" ID="btnIngresarDinero" OnClick="btnIngresarDinero_Click"></asp:Button></td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>

        </div>
    </form>
</body>
</html>
