<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjustesMenu.aspx.cs" Inherits="Chimbank.Config" %>

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
        <br />
        <br />

        <div>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
                        <asp:Label ID="Label1" CssClass="Milabel" runat="server" Text="AJUSTES"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="118px" Width="137px"   ImageUrl="~/Diseños/ImgClave.png"  OnClick="ImageButton1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
                        <asp:Label ID="Label3" CssClass="text" runat="server" Text="Cambiar clave"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Diseños/ImgSalir.png" OnClick="ImageButton1_Click" Height="118px" Width="137px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
                        <asp:Label ID="Label2" CssClass="text" runat="server" Text="Salir"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
