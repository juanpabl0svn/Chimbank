<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar_persona.aspx.cs" Inherits="Chimbank.Registrar_persona" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href ="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
                        <asp:Label ID="Label8" runat="server" CssClass="Milabel" Text  ="Registrar" ></asp:Label>
        <br />
        <br />
        <div>
            <table  align="center">
                <tr>
                    <td ></td>
                    <td></td>                   
                    <td></td>      
                </tr>
                <tr>
                    <td ></td>                   
                    <td ></td>                    
                    <td ></td>                    
                </tr>
                <tr>
                    <td>&nbsp;</td>

                    <td>
                        <table class="tabla">
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td >
                                    <asp:Label ID="Label1" runat="server" Text="NIT"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorYaexiste" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                                <td >
                                    &nbsp;</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td >
                                    <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorNombreVacio" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                                <td >
                                    &nbsp;</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td >
                                    <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorApellidoVacio" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>

                                <td >
                                    <asp:Label ID="Label4" runat="server" Text="Correo"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorCorreoInvalido" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td >
                                    <asp:Label ID="Label5" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" show="*"></asp:TextBox>
                                    <asp:Label ID="lblErrorContraseña" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                                <td >
                                    &nbsp;</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>   
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Confirmar contraseña"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtConfirmarContraseña" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:Label ID="lblErrorContraseñaConfirmar" runat="server"  Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td >
                                    <asp:Label ID="Label7" runat="server" Text="Dinero inicial"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtDineroInicial" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorDinero" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                                <td >
                                    &nbsp;</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
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
                    <td ></td>
                    <td ></td>
                    <td ></td>
                </tr>

                <tr>
                    <td ></td>
                    <td >
                        <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Cssclass="button" Text="Registrar" />
                    </td>
                    <td ></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSalir" runat="server" Cssclass="button" Text="Salir" OnClick="btnSalir_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
