<%-- 
    Document   : index
    Created on : 07-mar-2014, 15:38:43
    Author     : Americo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.ConectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    String id_usu = "";
    ConectionDB con = new ConectionDB();
    try {
        id_usu = (String) session.getAttribute("id_usu");
    } catch (Exception e) {
    }

    if (id_usu == null) {
        response.sendRedirect("index.jsp");
    }
    ArrayList pass = new ArrayList();
    try {
        con.conectar();
        ResultSet rset = con.consulta("select pass from usuarios where rol=3");
        while (rset.next()) {
            pass.add(rset.getString(1));
        }
        con.cierraConexion();
    } catch (Exception e) {

    }

    for (int i = 0; i < pass.size(); i++) {
        System.out.println(pass.get(i));
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap -->
        <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="../css/topPadding.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <title>SIALSS</title>
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="main_menu.jsp">SCR</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                   <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Mod. Farmacias<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="modSurteFarmacia.jsp">Surtido</a></li>
                            <li><a href="modRecetasSurtidas.jsp">Consultas</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reportes<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="repDiarioFarmacia.jsp">Reporte Diario por Receta</a></li>
                            <li><a href="repMensFarmacia.jsp">Reporte Mensual por Receta</a></li>
                            <li><a href="repConsSemanal.jsp">Consumo Semanal</a></li>
                            <li><a href="repSolSur.jsp">Solicitado / Surtido</a></li>
                            <!--li><a href="#">Pendiente por Cobrar</a></li>
                            <li><a href="#">Reporte de Antibióticos</a></li>
                            <li><a href="#">Reporte Diario</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Existencias<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="existencias.jsp">Existencias</a></li>
                            <li><a href="cargaAbasto.jsp">Cargar Abasto</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                </ul>
                <div class="navbar-form navbar-right">
                    <a class="btn btn-default" href="../index.jsp">Salir</a>
                </div>
            </div><!--/.nav-collapse -->
        </div>

        <div class="container-fluid">
            <div class="container" style="width: 600px;">
                <h2>Cargar Abasto</h2>
                <form name="cargaAbasto" method="POST" enctype="multipart/form-data" action="../FileUploadServlet">
                    <div class="row">
                        <label class="form-horizontal col-lg-4">Seleccione un archivo:</label>
                        <div class="col-lg-8">
                            <input type="file" class="form-control" name="archivo" accept=".csv">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <label class="form-horizontal col-lg-4">Contraseña:</label>
                        <div class="col-lg-8">
                            <input type="password" id="contra" placeholder="Contraseña de Administrador" class="form-control">
                        </div>
                    </div>
                    <br />
                    <div class="col-lg-12">
                        <button class="btn btn-primary btn-block" onclick="return comparaClave();">Cargar</button>
                    </div>
                </form>
            </div>
        </div>

    </body><!-- 
================================================== -->
    <!-- Se coloca al final del documento para que cargue mas rapido -->
    <!-- Se debe de seguir ese orden al momento de llamar los JS -->
    <script src="../js/jquery-1.9.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery-ui-1.10.3.custom.js"></script>
    <script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/sha1.js"></script>

    <script>
                            function comparaClave() {
                                var pass = document.getElementById('contra').value;
                                var result = ("*" + CryptoJS.SHA1(CryptoJS.SHA1(pass))).toUpperCase();
        <%
            for (int i = 0; i < pass.size(); i++) {
        %>

                                if (result === "<%=pass.get(i)%>") {
                                    alert("Datos correctos");
                                    return true;
                                }
        <%
            }
        %>
                                alert("Datos incorrectos");
                                return false;
                            }
    </script>
</html>


