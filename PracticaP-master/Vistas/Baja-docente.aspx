<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja-docente.aspx.cs" Inherits="Vistas.Baja_docente" %>

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
    <title>Baja Docente</title>
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
        <div>
            <h1>Baja docente</h1>
        </div>
    <form id="frmBaja" runat="server">
        <div>
            <label>Docente: <%=docente.Nombre+ " " +docente.Apellido %> </label><br />
            <label>DNI: <%=docente.Dni %> </label><br />
            <h5>Razon de baja:</h5>
        </div>
         <div>
            <textarea id="taRazon" cols="20" name="S1" rows="2" runat="server"></textarea>
        </div>
        <div>
            <asp:Button ID="btnBaja" class="btn btn-primary" OnClick="btnConfirmar_Click" Text="Confirmar" runat="server"/>
        </div>
    </form>
   </div>
     <footer>
        <div class="divContactenos">
            <h3>Consultas Tecnicas</h3>
            <p href="mailto: swop.soporte@gmail.com">swop.soporte@gmail.com</p>
        </div>
    </footer>
</body>
</html>
