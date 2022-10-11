<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingresar-Docente.aspx.cs" Inherits="Vistas.Ingresar_Docente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/edit.css"/>
    <script src="https://kit.fontawesome.com/17174b092b.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap" rel="stylesheet"/>
    <title>Portal de Profesores</title>
     <style type="text/css">
         .auto-style1 {
             width: 150px;
         }
         .auto-style2 {
             width: 169px;
         }
         .auto-style3 {
             width: 162px;
         }
         .auto-style4 {
             width: 169px;
             height: 18px;
         }
         .auto-style5 {
             width: 162px;
             height: 18px;
         }
         .auto-style6 {
             height: 18px;
         }
         .auto-style7 {
             width: 169px;
             height: 25px;
         }
         .auto-style8 {
             width: 162px;
             height: 25px;
         }
         .auto-style9 {
             height: 25px;
         }
         .auto-style10 {
             width: 169px;
             height: 22px;
         }
         .auto-style11 {
             width: 162px;
             height: 22px;
         }
         .auto-style12 {
             height: 22px;
         }
     </style>
</head>
<body style="background: rgb(151, 205, 226);background: linear-gradient(0deg, rgb(215, 229, 235) 0%, rgb(151, 205, 226) 100%);">
     <header class="header">
        <div class="divHeaderSup">
            <div class="divHeaderIzq">
                <div class="divLogo"><img src="img/LogoUtn2.png" alt=""></div>
            </div>
            <div class="divText">
                <h1>UTN|FRGP</h1>
                <p>Universidad Tecnologica Nacional</p>
                <p>Facultad Regional General Pacheco</p>
            </div>
            <div class="divHeaderDer">
                <img src="img/LogoUtn.png" alt="">
                <a href="inicio.aspx?logout=1">LOG OUT <i class="fas fa-sign-out-alt"></i></a>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col">
               
                 <h1>Ingreso de Docente</h1>
                
            </div>
        </div>
        <div class="row">
            <form id="frmIngreso" runat="server">
                <div class="col">
                    <div>
                        &nbsp;<table class="w-100">
                            <tr>
                                <td class="auto-style2">
                        <label>Documento:</label></td>
                                <td class="auto-style3">
                        <label class="offset-sm-0"><asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>
                        <label>
                        <asp:RequiredFieldValidator ID="rfvDocumento" runat="server" ControlToValidate="txtDni" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revDocumento" runat="server" ControlToValidate="txtDni" ErrorMessage="Ingrese un DNI válido" ForeColor="Red" ValidationExpression="^[0-9]{8}" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </label>
                                    <asp:Label ID="lblDni" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                        <label>Tipo de Documento:</label></td>
                                <td class="auto-style3">
                        <label><asp:DropDownList ID="ddTipo" runat="server">
                            <asp:ListItem Selected Value="dni">DNI</asp:ListItem>
                            <asp:ListItem Value="pasaporte">Pasaporte</asp:ListItem>
                        </asp:DropDownList></label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                        <label>Nombre:</label></td>
                                <td class="auto-style11">
                        <label><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td class="auto-style12">
                        <label>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Solo se admiten letras" ForeColor="Red" ValidationExpression="^[A-ZÑa-zñáéíóúÁÉÍÓÚ'° ]+$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                        <label>Apellido:</label></td>
                                <td class="auto-style3">
                        <label class="auto-style1"><asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>
                        <label>
                        <label class="auto-style1">
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Solo se admiten letras" ForeColor="Red" ValidationExpression="^[A-ZÑa-zñáéíóúÁÉÍÓÚ'° ]+$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </label>
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                        <label>Email:</label></td>
                                <td class="auto-style5">
                        <label><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td class="auto-style6">
                        <label>
                        <asp:RequiredFieldValidator ID="rfvMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Utilice el formato correcto" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                        <label>Direccion:</label></td>
                                <td class="auto-style3">
                        <label><asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>
                        <label>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                        <label>Telefono:</label></td>
                                <td class="auto-style11">
                        <label><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td class="auto-style12">
                        <label>
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Solo se admiten números" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                        <label>CV url:</label></td>
                                <td class="auto-style8">
                        <label>
                                    <asp:FileUpload ID="FUCurriculum" runat="server" />
                        </label>
                                </td>
                                <td class="auto-style9">
                        <label>
                        <asp:RequiredFieldValidator ID="rfvCV" runat="server" ControlToValidate="FUCurriculum" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                                    <asp:RegularExpressionValidator ID="revcv" runat="server" ControlToValidate="FUCurriculum" ErrorMessage="Solo archivos .pdf" ForeColor="Red" ValidationExpression="^.*\.(pdf|PDF)$" ValidationGroup="grupo1"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                        <label>Foto url:</label></td>
                                <td class="auto-style3">
                                    <asp:FileUpload ID="FUFoto" runat="server" />
                                </td>
                                <td>
                        <label>
                        <asp:RequiredFieldValidator ID="rfvFoto" runat="server" ControlToValidate="FUFoto" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FUFoto" ErrorMessage="Solo archivos .png .jpg .jpeg " ForeColor="Red" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$" ValidationGroup="grupo1"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                        <label>Fecha Nacimiento:</label></td>
                                <td class="auto-style3">
                        <label><asp:TextBox ID="txtNacimiento" TextMode="Date" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>
                        <label>
                        <asp:RequiredFieldValidator ID="rfvNacimiento" runat="server" ControlToValidate="txtNacimiento" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        &nbsp;<label><asp:Button ID="btnGuardar" class="btn btn-primary" OnClick="btnGuardar_Click" Text="Guardar" runat="server" ValidationGroup="grupo1"/></label>
                        
                    <div class="col">
                        
                                <div class="col">
                                    &nbsp;<label><a href="Docentes.aspx" class="btn btn-danger">Volver</a></label><br />
                                    <br />
                                    <asp:ValidationSummary ID="vsDocente" runat="server" ForeColor="Red" ValidationGroup="grupo1" />
                                </div>
                        
                    </div>
                    </div>
                </div>
                <div class="row">
                </div>
            </form>
        </div>
    </div>
    <footer>
        <div class="divContactenos">
            <h3>Consultas Tecnicas</h3><p>swop.soporte@gmail.com</p>
        </div>
    </footer>
</body>
</html>
