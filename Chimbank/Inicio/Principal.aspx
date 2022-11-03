<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Chimbank.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href ="/Diseños/StyleSheet2.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            width: 295px;
        }
        .auto-style2 {
            width: 209px;
        }
    </style>

</head>
<body>
    <ul class="menu" align="center">  
        <li><a href ="/Inicio/Principal.aspx">Inicio</a></li>
        <li><a href ="/Transferencia/TransferenciaMenu.aspx">Transacciones</a></li>
        <li><a href ="/Pagos/PagosMenu.aspx">Pagar</a></li>
        <li><a href ="/Credito/CreditoMenu.aspx">Prestamos</a></li>
        <li><a href ="/Ajustes/AjustesMenu.aspx">Ajustes</a></li>

    </ul>
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div>
            <table style="border-style: outset;width:60%; background-color: #008080;" align="center">
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
            <br />
            <br />

            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">

            <asp:Label ID="Label1"  runat="server" CssClass="Milabel"  Text="MENU DINAMICO" align="center"></asp:Label>

                    </td>
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
            <table style="border-style: outset;width:80%; background-color: #008080;" align="center">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr >
                    <td align="center">
                        <asp:ImageButton ID="imgbtnHacerTransfer" runat="server" Height="110px" ImageUrl="~/Diseños/ImgTransferir.png" OnClick="imgbtnHacerTransfer_Click" Width="144px" />
                    </td>
                    <td align="center" class="auto-style2">
                        <asp:ImageButton ID="imgbtnVerMovimientos" runat="server" Height="112px" ImageUrl="~/Diseños/ImgMovimientos.png" OnClick="imgbtnVerMovimientos_Click" Width="173px" />
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="imgbtnCredito" runat="server" Height="111px" ImageUrl="~/Diseños/ImgCredito.png" OnClick="imgbtnCredito_Click" Width="147px" />
                    </td>
                </tr>
                <tr align="center">
                    <td align="center"> 
                        <asp:Label runat="server" CssClass="text" Text="Transferir"  ></asp:Label></td>
                    <td align="center"><asp:Label runat="server" CssClass="text" Text="Ver movimientos"></asp:Label></td>
                    <td align="center"><asp:Label runat="server" CssClass="text" Text="Pagar credito"></asp:Label></td>

                </tr>
                
            </table>
            <br />

        </div>
    </form>
</body>
</html>

