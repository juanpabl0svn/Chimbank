<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Chimbank.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />

</head>
<body>
    <ul class="menu">     
        <li><a href ="Main.aspx">Inicio</a></li>
        <li><a href ="Transacciones.aspx">Transacciones</a></li>
        <li><a href ="#">Pagar</a></li>
        <li><a href ="#">Prestamos</a></li>



    </ul>
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
                        <asp:Label ID="PrecioLabel" runat="server" Text= '<%# Eval("Precio", "{0:c}") %>'
                Font-Bold="True"  Font-Names="Century Gothic"  ForeColor="Black" />
                    </td>
                    <td>&nbsp;</td>
                    <td align="right">
                        <asp:Label ID="lblPresentar" runat="server" Text="Label" Font-Bold="True"  Font-Names="Century Gothic"  ForeColor="Black"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td align="right">
                        <asp:Label ID="lblNumeroCuetna" runat="server" CssClass="lbl" Text="Label" Font-Bold="True"  Font-Names="Century Gothic"  ForeColor="Black"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
