<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambairClave.aspx.cs" Inherits="Chimbank.CambiarClave" %>

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
        <table class="auto-style2">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label8" CssClass="Milabel" runat="server" Text="CAMBIAR CONTRASEÑA"></asp:Label>
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
                                    <asp:Label ID="Label1" runat="server" Text="Numero de cuenta"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtNumeroCuenta" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorYaexiste" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
       
                            </tr>
                            <tr>
  
                                <td >
                   
                                </td>
                                <td >
                             
                                </td>


                            </tr>
                            <tr>

                                <td >
                                    <asp:Label ID="Label3" runat="server" Text="NIT"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtNit" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblErrorApellidoVacio" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
  
   
                            </tr>
                            <tr>


                                <td >
                                
                                </td>
                                <td >
                
                                </td>
    
                            </tr>
                            <tr>

                                <td >
                                    <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtCorreo" runat="server" TextMode="Password" show="*"></asp:TextBox>
                                    <asp:Label ID="lblErrorContraseña" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
   
                            </tr>
                            <tr>

                                <td>
                                    
                                </td>
                                <td >
                                    
                                </td>
    
       
                                
                            </tr>
                            
                            <tr>

                                <td >
                                    <asp:Label ID="Label4" runat="server" Text="Nueva contraseña"></asp:Label>
                                </td>
                                <td >
                                    <asp:TextBox ID="txtClave" runat="server" ></asp:TextBox>
                                    <asp:Label ID="Label6" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                                </td>
   
                            </tr>
                            <tr>

                            </tr>
                            <tr>
         
                                <td class="auto-style1">
                                    
                                    <asp:Label ID="Label2" runat="server" Text="Confirmar nueva contraseña"></asp:Label>
                                    
                                </td>
                                <td>
                                    <asp:TextBox ID="txtclaveConfirmar" runat="server"  ></asp:TextBox>

                                    <asp:Label ID="lblErrorTC" runat="server" ClientIDMode="Predictable" Text="Label" Visible="False" ForeColor="Red"></asp:Label>

                                </td>
                            </tr>
          
                        </table>
        <div>
            <br />
            <table style="width:60%;" align="center">
                <tr>
                    <td class="auto-style1">
                                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Cambiar" OnClick="btnRegistrar_Click" />
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

