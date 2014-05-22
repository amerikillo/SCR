
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    String id_usu = "";
    try {
        id_usu = (String) session.getAttribute("id_usu");
    } catch (Exception e) {
    }

    if (id_usu == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='../css/fullcalendar.css' rel='stylesheet' />
        <link href='../css/bootstrap.css' rel='stylesheet' />
        <link href="../css/pie-pagina.css" rel="stylesheet" media="screen">
        <link href="../css/topPadding.css" rel="stylesheet">
        <link href='../css/fullcalendar.print.css' rel='stylesheet' media='print' />

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
            <div class="container" style="padding-top: 20px">
                <div id='calendar'></div>
            </div>
        </div>
    </body>
    <script src='js/jquery.min.js'></script>
    <script src='js/jquery-ui.custom.min.js'></script>
    <script src='../js/fullcalendar.js'></script>
    <script>

        $(document).ready(function() {
            var date = new Date();
            var d = date.getDate();
            var m = date.getMonth();
            var y = date.getFullYear();

            var calendar = $('#calendar').fullCalendar({
                editable: false,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                events: "../Events?ban=1",
                // Convert the allDay from string to boolean
                eventRender: function(event, element, view) {
                    if (event.allDay === 'true') {
                        event.allDay = true;
                    } else {
                        event.allDay = false;
                    }
                }
            });



        });

    </script>
</html>