<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HacerTransferencia.aspx.cs" Inherits="Chimbank.New_transfer" %>

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
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td align="center">
                    <asp:Label ID="Label7" CssClass="Milabel" runat="server" Text="TRANSFERENCIA"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <table style="border-style: outset;width:50%; background-color: #008080;" align="center">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Favoritos"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCuentas" runat="server" CssClass="auto-style2">
                            <asp:ListItem>Seleccionar</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="btnBuscarInfo" CssClass="button" runat="server" OnClick="btnBuscarInfo_Click" Text="Buscar" />
                    </td>
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
            <table style="border-style: outset;width:80%; background-color: #008080;" align="center">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Numero de cuenta"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumeroCuenta" runat="server"></asp:TextBox>
                        <asp:Label ID="lblErrorNumeroCuenta" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Nit"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNit" runat="server"></asp:TextBox>
                        <asp:Label ID="lblErrorNit" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        <asp:Label ID="lblErrorNombre" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Valor"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                        <asp:Label ID="lblErrorValor" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnEnviar" CssClass="button" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:CheckBox ID="chGuardar" runat="server" Text="¿Recordar cuenta?" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
