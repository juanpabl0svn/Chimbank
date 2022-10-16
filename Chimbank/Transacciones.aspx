<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transacciones.aspx.cs" Inherits="Chimbank.WebForm2" %>

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
    <form id="form1" runat="server">
        <div>
            
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
            
            <asp:TextBox ID="txtTransacciones" runat="server" CssClass="texto" Height ="365px" Width="557px" TextMode="MultiLine" ReadOnly="True" ></asp:TextBox>
            
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
