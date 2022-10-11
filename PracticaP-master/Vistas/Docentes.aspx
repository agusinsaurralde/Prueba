<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Docentes.aspx.cs" Inherits="Vistas.Docentes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
<body style="background: linear-gradient(0deg, rgb(215, 229, 235) 0%, rgb(151, 205, 226) 100%);">
   
    
     <header class="header">
        <div class="divHeaderSup">
            <div class="divHeaderIzq">
                <div class="divLogo"><img src="img/LogoUtn2.png" alt="Logo"></div>
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
                   <h1>Docentes</h1>
               </div>
           </div>
            <div class="row">
                <div class="col">
                   <a href="Ingresar-Docente.aspx" class="btn btn-primary">Agregar</a>
               </div>
                <div class="col">
                    <form id="frmBuscar" runat="server">
                       (busca por nombre y apellido) <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscar" Text="Buscar" onclick="btnBuscar_Click" CssClass="btn btn-primary" runat="server" />
                    </form>
               </div>
           </div>
            <div class="row">
               <div class="col">
                   <table class="table table-hover">
                        <thead>
                            <tr>
                              <th scope="col">DNI</th>
                              <th scope="col">Nombre</th>
                              <th scope="col">Apellido</th>
                              <th scope="col">Accion 1</th>
                              <th scope="col">Accion 2</th>
                              <th scope="col">Accion 3</th>
                            </tr>
                          </thead>
                          <tbody>
                            <% foreach (Entidades.Docente item in lista)
                                {%>
                                    <tr>
                                        <td><%=item.Dni %></td>
                                        <td><%=item.Nombre%></td>
                                        <td><%=item.Apellido %></td>
                                        <td><a href="Mostrar-Docente.aspx?dni=<%=item.Dni %>">Mostrar</a></td>
                                        <td><a href="Modificar-Docente.aspx?dni=<%=item.Dni %>">Modificar</a></td>
                                        <td><a href="Baja-docente.aspx?dni=<%=item.Dni %>">Eliminar</a></td>
                                    </tr>
                                <%} %>
                          </tbody>
                    </table>
               </div>
           </div>
           <div class="col">
                <a href="Docentes.aspx" class="btn btn-primary">Todos</a>
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
