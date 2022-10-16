<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="Chimbank.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href ="/Design/StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <br />
    <br />
    <br />
    <br />

    <form id="form1" runat="server">
       <table style="width:60%; background-color: #008080;" align="center">
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td align="Center" class="auto-style6">
                                    <asp:Label ID="Label1" runat="server" Text="Usuario"> </asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7"></td>
                                <td align="Center" class="auto-style8">
                                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style9">
                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td align="Center" class="auto-style6">
                                    <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td align="Center" class="auto-style6">
                                    <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style6"></td>
                                <td class="auto-style3"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style6" align="center">
                                    <asp:Button ID="btnIniciar" runat="server" CssClass="button" Text="Iniciar" OnClick="btnIniciar_Click" />
                                </td>
                                <td class="auto-style3"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style6" align="center">
                                    <asp:HyperLink ID="linkRegistrar" runat="server" NavigateUrl="~/Registrar_persona.aspx">¿Aun no tienes cuenta? Crea una aqui</asp:HyperLink>
                                </td>
                                <td class="auto-style3"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style6"></td>
                                <td class="auto-style3"></td>
                            </tr>

                        </table>
        <div>
        </div>
    </form>
</body>
</html>
