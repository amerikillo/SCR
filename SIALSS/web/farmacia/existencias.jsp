<%-- 
    Document   : index
    Created on : 07-mar-2014, 15:38:43
    Author     : Americo
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.ConectionDB"%>

<%java.text.DateFormat df2 = new java.text.SimpleDateFormat("yyyy-MM-dd"); %>
<%java.text.DateFormat df3 = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DecimalFormat formatNumber = new DecimalFormat("#,###,###,###");
    ConectionDB con = new ConectionDB();
    HttpSession sesion = request.getSession();
    String id_usu = "";
    try {
        id_usu = (String) session.getAttribute("id_usu");
    } catch (Exception e) {
    }

    if (id_usu == null) {
        response.sendRedirect("index.jsp");
    }

    String fecha1 = df2.format(new Date());
    String fecha2 = "2030-01-01";
    int meses=0;
    try {
        meses = Integer.parseInt(request.getParameter("meses"));
        if (meses==0){
            meses=500;
        }
        Calendar c1 = GregorianCalendar.getInstance();
        c1.add(Calendar.MONTH,meses);

        fecha2 = df2.format(c1.getTime());
        if (meses==500){
            meses=0;
        }
        
    } catch (Exception e) {
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap -->
        <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="../css/topPadding.css" rel="stylesheet">
        <link href="../css/dataTables.bootStrap.css" rel="stylesheet">
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
                    <%                        try {
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

                    <!--a href="#rc">Receta Colectiva</a-->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Mod. Farmacias<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="farmacia/modSurteFarmacia.jsp">Ver Recetas</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Existencia<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="farmacia/modSurteFarmacia.jsp">Cargar Abasto</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                    <%
                            }
                        } catch (Exception e) {

                        }
                    %>

                </ul>
            </div><!--/.nav-collapse -->
        </div>

        <div class="container-fluid">
            <div class="container">
                <h3>Existencias</h3>
                <div class="row">
                    <div class="col-lg-12 form-horizontal">
                        <h4><strong>Total de Piezas:
                                <%
                                    try {
                                        con.conectar();
                                        ResultSet rset = con.consulta("select sum(cant) from existencias where cad_pro between '" + fecha1 + "' and '" + fecha2 + "' ");
                                        while (rset.next()) {
                                            out.println(formatNumber.format(rset.getInt(1)));
                                        }
                                    } catch (Exception e) {
                                        out.println(e.getMessage());
                                    }
                                %>
                                piezas</strong>
                        </h4>
                    </div>
                </div>
                <br />
                <div class="row">
                    <form action="existencias.jsp" method="post">
                    <label class="col-lg-2 control-label">Próximos a Caducar en Meses</label>

                    <div class="col-lg-1">
                        <input class="form-control" name="meses" id="meses" value="<%=meses%>" />
                    </div>
                    <div class="col-lg-1">
                        <button class="btn btn-primary" type="submit">Consultar</button>
                    </div>
                    </form>
                </div>
                <br/>
                <table class="table table-bordered table-condensed table-responsive table-striped" id="existencias">
                    <thead>
                        <tr>
                            <td>Clave</td>
                            <td>Descripción</td>
                            <td>Lote</td>
                            <td>Caducidad</td>
                            <td>Origen</td>
                            <td>Cantidad</td>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                con.conectar();
                                ResultSet rset = con.consulta("select * from existencias where cad_pro between '" + fecha1 + "' and '" + fecha2 + "' and cant!=0 ");
                                while (rset.next()) {
                        %>
                        <tr>

                            <td><%=rset.getString(1)%></td>
                            <td><%=rset.getString(2)%></td>
                            <td><%=rset.getString(3)%></td>
                            <td><%=df3.format(df2.parse(rset.getString(4)))%></td>
                            <td><%=rset.getString(5)%></td>
                            <td><%=rset.getString(6)%></td>
                        </tr>
                        <%
                                }
                                con.cierraConexion();
                            } catch (Exception e) {

                            }
                        %>
                    </tbody>
                </table>

            </div>
        </div>

    </body>
    <!-- 
    ================================================== -->
    <!-- Se coloca al final del documento para que cargue mas rapido -->
    <!-- Se debe de seguir ese orden al momento de llamar los JS -->
    <script src="../js/jquery-1.9.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery.dataTables.js"></script>
    <script src="../js/dataTables.bootstrap.js"></script>
    <script src="../js/jquery-ui-1.10.3.custom.js"></script>
    <script>
        $(document).ready(function() {
            $('#existencias').dataTable();
        });
    </script>
</html>

