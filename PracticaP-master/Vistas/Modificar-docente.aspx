<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar-docente.aspx.cs" Inherits="Vistas.Modificar_docente" %>

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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modificar Docente</title>
</head>
<body>
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
                
                <h1>Modificar Docente</h1>
                       
                
            </div>
        </div>
        <div class="row">
            <form id="frmModificar" runat="server">
                <div class="col">
                    <div>
                        <label>Documento:</label>
                        <label><asp:TextBox ID="txtDni" runat="server" ReadOnly="True"></asp:TextBox>
                        </label>
                    </div>
                    <div>
                        <label>Tipo de Documento:</label>
                        <label><asp:DropDownList ID="ddTipo" runat="server">
                            <asp:ListItem Selected Value="dni">DNI</asp:ListItem>
                            <asp:ListItem Value="pasaporte">Pasaporte</asp:ListItem>
                        </asp:DropDownList></label>
                    </div>
                    <div>
                        <label>Nombre:</label>
                        <label><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Solo se admiten letras" ForeColor="Red" ValidationExpression="^[A-ZÑa-zñáéíóúÁÉÍÓÚ'° ]+$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </label>
                    </div>
                    <div>
                        <label>Apellido:</label>
                        <label><asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                        <label class="auto-style1">
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                        </label>
                        <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Solo se admiten letras" ForeColor="Red" ValidationExpression="^[A-ZÑa-zñáéíóúÁÉÍÓÚ'° ]+$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <label>Email:</label>
                        <label><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Utilice el formato correcto" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </label>
                    </div>
                </div>
                <div class="col">
                    <div>
                        <label>Direccion:</label>
                        <label><asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                    </div>        
                    <div>
                        <label>Telefono:</label>
                        <label><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe completar el campo" ForeColor="Red" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Solo se admiten números" ForeColor="Red" ValidationExpression="^[0-9]+$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <label>CV url:</label>
                        <label><asp:TextBox ID="txtCv" runat="server" ReadOnly="True"></asp:TextBox>
                                    <asp:FileUpload ID="FUCurriculum" runat="server" />
                        </label>
                                    <asp:RegularExpressionValidator ID="revcv" runat="server" ControlToValidate="FUCurriculum" ErrorMessage="Solo archivos .pdf" ForeColor="Red" ValidationExpression="^.*\.(pdf|PDF)$" ValidationGroup="grupo1"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <label>Foto url:</label>
                        <label><asp:TextBox ID="txtFoto" runat="server" ReadOnly="True"></asp:TextBox>
                        </label>
                                    <asp:FileUpload ID="FUFoto" runat="server" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FUFoto" ErrorMessage="Solo archivos .png .jpg .jpeg " ForeColor="Red" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP)$" ValidationGroup="grupo1"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <label>Fecha Nacimiento:</label>
                        <label><asp:TextBox ID="txtNacimiento" TextMode="Date" runat="server" ReadOnly="True"></asp:TextBox>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                      
                            <label><asp:Button ID="btnModificar" class="btn btn-primary" OnClick="btnModificar_Click" Text="Modificar" runat="server" ValidationGroup="grupo1"/></label>
                       
                    </div>
                    <div class="col">
                        <label><a href="Docentes.aspx" class="btn btn-danger">Volver</a><asp:ValidationSummary ID="vsModificar" runat="server" ForeColor="Red" ValidationGroup="grupo1" />
                        </label>
                    &nbsp;</div>
                </div>
            </form>
        </div>
    </div>
    <footer>
        <div class="divContactenos">
            <h3>Consultas Tecnicas</h3>
            <p href="mailto: swop.soporte@gmail.com">swop.soporte@gmail.com</p>
        </div>
    </footer>
</body>
</html>