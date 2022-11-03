<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iniciar.aspx.cs" Inherits="Chimbank.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href ="/Diseños/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 263px;
        }
        .auto-style5 {
            width: 381px;
        }
        .auto-style6 {
            width: 28px;
        }
        .auto-style7 {
            width: 60%;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label3" CssClass="Milabel" runat="server" Text="INICIAR SESION"></asp:Label>
                </td>
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
        </table>
    <br />
    <br />


       <table style="border-style: outset; width:40%; background-color: #008080;" align="center" class="auto-style7">
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1" align="center" colspan="1" rowspan="5">
                                    <asp:Image ID="Image1"  runat="server" ImageUrl="~/Diseños/ImgBanco.png" />
                                </td>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" align="center">
                                    <asp:Label ID="Label1" runat="server" Text="Usuario"> </asp:Label>
                                </td>
                                <td align="Center" class="auto-style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style5" >
                                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                                </td>
                                <td align="Center" class="auto-style6">
                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style5" align="center">
                                    <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td align="Center" class="auto-style6">
                                    &nbsp;</td>
          
                            </tr>
                            <tr>
                                <td class="auto-style5" align="center">
                                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td align="Center" class="auto-style6">
                                    &nbsp;</td>
                     
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style5"></td>
                                <td class="auto-style6"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style5" align="center">
                                    <asp:Button ID="btnIniciar" runat="server" CssClass="button" Text="Iniciar" OnClick="btnIniciar_Click" />
                                </td>
                                <td class="auto-style6"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style5" align="center">
                                    &nbsp;</td>
                                <td class="auto-style6"></td>
                            </tr>
           <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style5" align="center">
                                    <asp:HyperLink ID="linkOlvidarclave" runat="server" NavigateUrl="~/CambairClave.aspx">¿Olvidaste tu contraseña?</asp:HyperLink>
                                </td>
                                <td class="auto-style6"></td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style5" align="center">
                                    <asp:HyperLink ID="linkRegistrar" runat="server" NavigateUrl="~/Registrar/RegistrarMenu.aspx">¿Aun no tienes cuenta? Crea una aqui</asp:HyperLink>
                                </td>
                                <td class="auto-style6"></td>
                            </tr>

                        </table>
        <div>
        </div>
    </form>
</body>
</html>
