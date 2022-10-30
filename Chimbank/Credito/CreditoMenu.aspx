<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreditoMenu.aspx.cs" Inherits="Chimbank.Credito" %>


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
    <br />
    <br />
    <br />
    <br />

    <form id="form1" runat="server">
        <div>
            <table style="width:60%; background-color: #008080;" align="center">
                
                <tr>
                    <td>&nbsp;</td>
                    <td align="center"><asp:Label runat="server" Text="Credito actual: "></asp:Label>
                    </td>
                    <td align="center"><asp:Label runat="server" Text="" ID="lblCredito"></asp:Label>
                    </td>
                    <td align="right">
                        
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
                        
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <br />
            <br />
            <br />
            <br />
            <table style="width:60%; background-color: #008080;" align="center">
                <tr>
                    <td>&nbsp;<asp:ImageButton runat="server" OnClick="Unnamed2_Click"></asp:ImageButton></td>
                    <td align="center">
                    </td>
                    <td>&nbsp;</td>
                    <td align="right">
                        <asp:ImageButton runat="server"></asp:ImageButton>
                        
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
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
                        
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
