<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarMenu.aspx.cs" Inherits="Chimbank.Sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href ="/Diseños/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label8" CssClass="Milabel" runat="server" Text="REGISTAR"></asp:Label>
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
        <table style="border-style: outset; width:60%; background-color: #008080;" align="center">
                            <tr>
 
                                <td style="border-style: none" >
                                    <asp:Label ID="Label1" runat="server" Text="NIT"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtId" CssClass="textBox" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorYaexiste" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
       
                            </tr>
                            <tr>
  
                                <td >
                                    <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtNombre" CssClass="textBox" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorNombreVacio" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>


                            </tr>
                            <tr>

                                <td >
                                    <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtApellido" CssClass="textBox" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorApellidoVacio" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
  
   
                            </tr>
                            <tr>


                                <td >
                                    <asp:Label ID="Label4" runat="server" Text="Correo"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtCorreo" CssClass="textBox" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorCorreoInvalido" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
    
                            </tr>
                            <tr>

                                <td >
                                    <asp:Label ID="Label5" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtContraseña" CssClass="textBox" runat="server" TextMode="Password" show="*"></asp:TextBox>
                                    <asp:Label ID="lblErrorContraseña" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
   
                            </tr>
                            <tr>

                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Confirmar contraseña"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtConfirmarContraseña" CssClass="textBox" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:Label ID="lblErrorContraseñaConfirmar" runat="server"  Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
    
       
                                
                            </tr>
                            
                            <tr>
          
                                <td >
                                    &nbsp;</td>
                                <td >
                                    &nbsp;</td>
 
                            </tr>
                            <tr>
         
                                <td class="auto-style1">
                                    <asp:CheckBox ID="chConfirmar" runat="server" />
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registrar/TermsCondi.aspx">Ver terminos y condiciones</asp:HyperLink>
                                </td>
                                <td>

                                    <asp:Label ID="lblErrorTC" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>

                                </td>
                            </tr>
          
                        </table>
        <div>
            <br />
            <table style="width:60%;" align="center">
                <tr>
                    <td class="auto-style1">
                                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Registrar" OnClick="btnRegistrar_Click" />
                                </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                                </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>
                                    <asp:Button ID="Button2" CssClass="button" runat="server" OnClick="btnSalir_Click" Text="Salir" />
                                </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
