<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagarCredito.aspx.cs" Inherits="Chimbank.PagarCredito" %>

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
        <table style="border-style: outset; width:60%; background-color: #008080;" align="center">
                
                <tr>
                    <td>&nbsp;</td>
                    <td align="center"><asp:Label runat="server" Text="Credito actual:" Font-Bold="True"  Font-Names="Century Gothic"  ForeColor="Black"></asp:Label>
                    </td>
                    <td align="center"><asp:Label runat="server" Text="" ID="lblCredito" Font-Bold="True"  Font-Names="Century Gothic"  ForeColor="Black"></asp:Label>
                    </td>
                    <td align="right">
                        
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center"><asp:Label runat="server" Text="Dinero actual:" Font-Bold="True"  Font-Names="Century Gothic"  ForeColor="Black"></asp:Label>
                    </td>
                    <td align="center"><asp:Label runat="server" Text="" ID="lblDinero" Font-Bold="True"  Font-Names="Century Gothic"  ForeColor="Black"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td align="right">
                        
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        <br />
        <br />
        <br />
        <table style="width:60%;" align="center">
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td align="center">&nbsp;<asp:Label runat="server" CssClass="Milabel" Text="Abonar al credito"></asp:Label></td>
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
                 <td>&nbsp;<asp:Label runat="server" Text="Total a abonar: "></asp:Label></td>
                 <td>&nbsp;<asp:TextBox runat="server" ID="txtDineroAbonar"></asp:TextBox></td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;<asp:Label runat="server" ForeColor="Red" Text="Label" Visible="False" ID="lblError"></asp:Label></td>
             </tr>
             <tr>
                 <td>&nbsp;<asp:Button runat="server" CssClass="button" Text="Abonar" ID="btnAbonar" OnClick="btnAbonar_Click"></asp:Button></td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>


        </div>
    </form>
</body>
</html>
