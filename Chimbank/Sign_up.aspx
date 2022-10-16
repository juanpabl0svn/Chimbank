<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="Chimbank.Sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href ="/Design/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:60%; background-color: #008080;" align="center">
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
 
                                <td >
                                    <asp:Label ID="Label1" runat="server" Text="NIT"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorYaexiste" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
       
                            </tr>
                            <tr>
  
                                <td >
                                    <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorNombreVacio" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>


                            </tr>
                            <tr>

                                <td >
                                    <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorApellidoVacio" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
  
   
                            </tr>
                            <tr>


                                <td >
                                    <asp:Label ID="Label4" runat="server" Text="Correo"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorCorreoInvalido" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
    
                            </tr>
                            <tr>

                                <td >
                                    <asp:Label ID="Label5" runat="server" Text="Contraseña"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" show="*"></asp:TextBox>
                                    <asp:Label ID="lblErrorContraseña" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
   
                            </tr>
                            <tr>

                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Confirmar contraseña"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtConfirmarContraseña" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:Label ID="lblErrorContraseñaConfirmar" runat="server"  Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
    
       
                                
                            </tr>
                            
                            <tr>
          
                                <td >
                                    <asp:Label ID="Label7" runat="server" Text="Dinero inicial"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtDineroInicial" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorDinero" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
 
                            </tr>
                            <tr>
         
                                <td class="auto-style1">
                                    <asp:CheckBox ID="chConfirmar" runat="server" />
                                    <asp:HyperLink ID="HyperLink1" runat="server">Ver terminos y condiciones</asp:HyperLink>
                                </td>
                                <td>

                                    <asp:Label ID="lblErrorTC" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>

                                </td>
                            </tr>
            <tr>
         
                                <td class="auto-style1">&nbsp;</td>
                            </tr>
            <tr>
         
                                <td class="auto-style1">
                                    <asp:Button ID="Button1" runat="server" Text="Registrar" />
                                </td>
                            </tr>
            <tr>
         
                                <td class="auto-style1"></td>
                            </tr>
                        </table>
        <div>
        </div>
    </form>
</body>
</html>
