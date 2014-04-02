<%-- 
    Document   : index
    Created on : 07-mar-2014, 15:38:43
    Author     : Americo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.ConectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ConectionDB con = new ConectionDB();
    HttpSession sesion = request.getSession();
    String id_usu = "";
    try {
        id_usu = (String) session.getAttribute("id_usu");
    } catch (Exception e) {
    }

    if (id_usu == null) {
        //response.sendRedirect("index.jsp");
    }

    String fol_rec = "", nom_pac = "";
    try {
        fol_rec = request.getParameter("fol_rec");
        nom_pac = request.getParameter("nom_pac");
    } catch (Exception e) {

    }

    if (fol_rec == null) {
        fol_rec = "";
        nom_pac = "";
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
        <title>Sistema de Captura de Receta</title>
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
                    <%
                        try {
                            if (((String) sesion.getAttribute("tipo")).equals("FARMACIA")) {
                    %>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Receta Electronica <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="receta/receta_farmacia.jsp">Captura de Receta</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                    <%
                    } else {
                    %>
                    <li>
                        <a href="#rc">Receta Colectiva</a>
                    </li>
                    <%
                            }
                        } catch (Exception e) {

                        }
                    %>


                    <li><a href="#ap">Alta de Pacientes</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>

        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Búsqueda de Folios
                            </div>
                            <div class="panel-body">
                                <form>
                                    Por Folio:
                                    <input type="text" class="form-control" name="fol_rec" />
                                    Por Nombre de Derechohabiente:
                                    <input type="text" class="form-control" name="nom_pac" />
                                    <button class="btn btn-success btn-block" type="submit">Buscar</button>
                                    <button class="btn btn-warning btn-block" type="submit">Todas</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Ver Folios
                            </div>
                            <div class="panel-body">
                                <%
                                    try {
                                        con.conectar();
                                        ResultSet rset = con.consulta("SELECT DISTINCT(fol_rec), nom_com, fecha_hora from recetas where fol_rec like '%" + fol_rec + "%' and nom_com like '%" + nom_pac + "%'  ;");
                                        while (rset.next()) {
                                %>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h4>Folio: <%=rset.getString(1)%></h4>
                                            </div>
                                            <div class="col-sm-3">
                                            </div>
                                            <div class="col-sm-3">
                                                <button class="btn btn-block btn-primary">Surtir</button>
                                            </div>
                                            <div class="col-sm-3">
                                                <button class="btn btn-block btn-danger">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-4">
                                            <b>Paciente:</b> <%=rset.getString(2)%> <br>
                                            <b>Fecha y hora:</b><%=rset.getString(3)%>
                                        </div>
                                        <div class="col-lg-8">
                                            <table class="table table-bordered">
                                                <%
                                                    ResultSet rset2 = con.consulta("select cla_pro, des_pro, can_sol, cant_sur from recetas where fol_rec = '" + rset.getString(1) + "' ");
                                                    while (rset2.next()) {
                                                %>
                                                <tr>

                                                    <td>Clave:<%=rset2.getString(1)%></td>
                                                    <td>
                                                        Descripcion:<%=rset2.getString(2)%></td>
                                                    <td>
                                                        Solicitado:<%=rset2.getString(3)%></td>
                                                    <td>
                                                        Surtido:<%=rset2.getString(4)%></td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <%
                                        }
                                        con.cierraConexion();
                                    } catch (Exception e) {
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </body>
    <!-- 
    ================================================== -->
    <!-- Se coloca al final del documento para que cargue mas rapido -->
    <!-- Se debe de seguir ese orden al momento de llamar los JS -->
    <script src="../js/jquery-1.9.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery-ui-1.10.3.custom.js"></script>
</html>

