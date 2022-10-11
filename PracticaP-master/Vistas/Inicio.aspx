<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Inicio" %>

<!DOCTYPE htm
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
</head>
<body>
    <header class="header">
        <div class="divHeaderSup">
            <div class="divHeaderIzq">
                <div class="divLogo"><img src="img/LogoUtn2.png" alt=""/></div>
            </div>
            <div class="divText">
                <h1>UTN|FRGP</h1>
                <p>Universidad Tecnologica Nacional</p>
                <p>Facultad Regional General Pacheco</p>
            </div>
        </div>
    </header>
    <main>
        <h2>INGRESAR</h2>
        <section>
             <%if (usuario == null)%>
             <%{ %>

            <form id="frmLogin" runat="server">
                <img src="img/LogoUtn.png" alt=""/>
                <div>
                    <label>Usuario</label>
                    <label><asp:TextBox id="txtUsuario" runat="server" Wrap="False"></asp:TextBox></label>
                </div>
                <div>
                    <label>Contraseña</label>
                    <label><asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox></label>
                </div>
                <div>
                    <label><asp:Button ID="btnAceptar" class="btn btn-primary" runat="server" OnClick="OnClickBtnAceptar" text="Ingresar"/></label>
                </div>
                <div>
                    <label><asp:Label ID="lblErrorIngreso" ForeColor="Red" runat="server" /></label>   
                </div>
             </form>

            <%} %>
            <%else %>
            <%{ %>
                <div>
                    <a href="Inicio.aspx?logout=1" class="btn btn-alert">Cerrar sesion</a>
                </div>
            <%} %>
        </section>
    </main>
    <footer>
        <div class="divContactenos">
            <h3>Consultas Tecnicas</h3>
            <p href="mailto: swop.soporte@gmail.com">swop.soporte@gmail.com</p>
        </div>
    </footer>
</body>
</html>
