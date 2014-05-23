
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.ConectionDB"%>
<%@page import="Calendario.LugaresDisp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LugaresDisp lugar = new LugaresDisp();
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
                <form class="form-horizontal" role="form">
                    <div class="form-group col-lg-12">
                        <label for="selectMedico" class="col-lg-2 control-label">Filtrar por Médico</label>
                        <div class="col-lg-6">
                            <select class="form-control" name="selectMedico" id="selectMedico">
                                <option value="">TODOS</option>
                                <%
                                    try {
                                        con.conectar();
                                        ResultSet rset = con.consulta("select url from eventos group by url order by url");
                                        while (rset.next()) {
                                            out.println("<option value='" + rset.getString(1) + "'>" + rset.getString(1) + "</option>");
                                        }
                                        con.cierraConexion();
                                    } catch (Exception e) {

                                    }
                                %>
                            </select>
                        </div>
                    </div>
                </form>

                <br/>
                <div class="row">
                    <div class="col-lg-8">
                        <div id='calendar'></div>
                    </div>
                    <div class="col-lg-4">
                        <h4>Posibles nuevos horarios</h4>
                        <table class="table table-bordered table-striped">
                            <tr>
                                <td>Consultorio</td>
                                <td>Hora</td>
                            </tr>
                            <%
                                ArrayList citas = lugar.devuelveLugares();
                                for (int i = 0; i < citas.size(); i++) {
                                    String datosCita[] = ((String) citas.get(i)).split(",");
                            %>
                            <tr>
                                <td><%=datosCita[1]%></td>
                                <td><%=datosCita[2]%></td>
                            </tr>
                            <%
                                }
                            %>
                        </table>

                    </div>
                </div>
            </div>
        </div>


        <button data-toggle="modal" href="#myModal2" id="boton" class="hidden">Instrucciones</button>
        <!-- 
                                                               Mensaje de Acerca de...
        -->
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form method="post">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Detalles de la Cita</h4>
                        </div>
                        <div class="modal-body">
                            Médico:
                            <select class="form-control" name="medico" id="medico">
                                <option value="">--Seleccione un médico--</option>
                                <%
                                    try {
                                        con.conectar();
                                        ResultSet rset = con.consulta("select consultorio from consultorios group by consultorio order by id");
                                        while (rset.next()) {
                                            out.println("<option value='" + rset.getString(1) + "'>" + rset.getString(1) + "</option>");
                                        }
                                        con.cierraConexion();
                                    } catch (Exception e) {

                                    }
                                %>

                            </select>
                            Nombre del evento:
                            <textarea class="form-control" name="nom_evento" id="nom_evento" ></textarea>

                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-primary" value="Guardar" id="btn_guardar" />
                            <button type="button" class="btn btn-default" data-dismiss="modal" id="btn_cancelar">Cerrar</button>
                            <!--button type="button" class="btn btn-primary">Guardar Info</button-->
                        </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


        <!-- 
     fin Mensaje de Acerca de...
        --> 

    </body>
    <script src='js/jquery.min.js'></script>
    <script src='js/jquery-ui.custom.min.js'></script>
    <script src='../js/fullcalendar.js'></script>
    <script src='../js/bootstrap.js'></script>
    <script >
        $(document).ready(function() {


            var date = new Date();

            var calendar = $('#calendar').fullCalendar({
                editable: true,
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
                },
                eventClick: function(event) {
                    var decision = confirm("¿Seguro que desea eliminarlo?");
                    if (decision) {
                        $.ajax({
                            type: "POST",
                            url: "../Events?ban=4",
                            data: "&id=" + event.id,
                            success: function(json) {
                                alert('Evento eliminado correctamente');
                            }
                        });
                        $('#calendar').fullCalendar('unselect', event.id);
                    } else {
                    }
                    return false;
                },
                selectable: true,
                selectHelper: true,
                select: function(start, end, allDay) {
                    $('#boton').click();
                    var title;
                    function getStart() {
                        return start;
                    }
                    function getEnd() {
                        return end;
                    }
                    $("#btn_guardar").click(function() {
                        if ($("#medico").val() === "" || $("#nom_evento").val() === "") {
                            alert("Complete los datos");
                            return false;
                        } else {
                            title = $("#nom_evento").val();// prompt('Agendar Cita:');
                            var url = $("#medico").val();// prompt('Type Event url, if exits:');
                            var id = null;
                            var start = $.fullCalendar.formatDate(getStart(), "yyyy-MM-dd HH:mm:ss");
                            var end = $.fullCalendar.formatDate(getEnd(), "yyyy-MM-dd HH:mm:ss");
                            if (title && start!=="") {
                                $.ajax({
                                    url: '../Events?ban=3',
                                    data: 'title=' + title + '&start=' + start + '&end=' + end + '&url=' + url,
                                    type: "POST",
                                    async: false,
                                    success: function(json) {
                                        id = dameID(json);
                                        set_id(id);
                                        alert('Evento agregado correctamente');
                                    }
                                });
                                function dameID(json) {
                                    var json = JSON.parse(json);
                                    for (var i = 0; i < json.length; i++) {
                                        id = json[i].id;
                                    }
                                    return id;
                                }
                                function set_id(id_aj) {
                                    id = id_aj;
                                }
                                calendar.fullCalendar('renderEvent',
                                        {
                                            id: id,
                                            title: title,
                                            start: start,
                                            end: end,
                                            allDay: allDay
                                        },
                                true // make the event "stick"
                                        );
                            }
                            calendar.fullCalendar('unselect');
                        }
                    });

                    $("#btn_cancelar").click(function() {
                        start = "";
                        end = "";
                        allDay = "";
                        title = null;
                    });
                }
                ,
                editable: true,
                        eventDrop: function(event, delta) {
                            var start = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd HH:mm:ss");
                            var end = $.fullCalendar.formatDate(event.end, "yyyy-MM-dd HH:mm:ss");
                            $.ajax({
                                url: '../Events?ban=2',
                                data: 'title=' + event.title + '&start=' + start + '&end=' + end + '&id=' + event.id,
                                type: "POST",
                                success: function(json) {
                                    alert("Evento actualizado correctamente");
                                }
                            });
                        },
                eventResize: function(event) {
                    var start = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd HH:mm:ss");
                    var end = $.fullCalendar.formatDate(event.end, "yyyy-MM-dd HH:mm:ss");
                    $.ajax({
                        url: '../Events?ban=2',
                        data: 'title=' + event.title + '&start=' + start + '&end=' + end + '&id=' + event.id,
                        type: "POST",
                        success: function(json) {
                            alert("Evento actualizado correctamente");
                        }
                    });

                }



            });

            $('#btn_eliminar').click(function() {
                var dir = '../EliminaClave';
                var form = $('#form_eliminaInsumo');
                $.ajax({
                    type: form.attr('method'),
                    url: dir,
                    data: form.serialize(),
                    success: function(data) {
                    },
                    error: function() {
                        //alert("Ha ocurrido un error");
                    }
                });
                location.reload();
            });

            $("#selectMedico").change(function() {
                $("#calendar").empty();
                var medico = $("#selectMedico").val();
                var calendar = $('#calendar').fullCalendar({
                    editable: true,
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay'
                    },
                    events: "../Events?ban=5&medico=" + medico,
                    // Convert the allDay from string to boolean
                    eventRender: function(event, element, view) {
                        if (event.allDay === 'true') {
                            event.allDay = true;
                        } else {
                            event.allDay = false;
                        }
                    },
                    eventClick: function(event) {
                        var decision = confirm("¿Seguro que desea eliminarlo?");
                        if (decision) {
                            $.ajax({
                                type: "POST",
                                url: "../Events?ban=4",
                                data: "&id=" + event.id,
                                success: function(json) {
                                    alert('Evento eliminado correctamente');
                                }
                            });
                            $('#calendar').fullCalendar('removeEvents', event.id);
                        } else {
                        }
                        return false;
                    },
                    selectable: true,
                    selectHelper: true,
                    select: function(start, end, allDay) {
                        function getStart() {
                            return start;
                        }
                        function getEnd() {
                            return end;
                        }
                        $('#boton').click();

                        $("#btn_guardar").click(function(start, end, allDay) {
                            if ($("#medico").val() === "" || $("#nom_evento").val() === "") {
                                alert("Complete los datos");
                                return false;
                            } else {
                                var title = $("#nom_evento").val();// prompt('Agendar Cita:');
                                var url = $("#medico").val();// prompt('Type Event url, if exits:');
                                var id = null;
                                if (title) {
                                    var start = $.fullCalendar.formatDate(getStart(), "yyyy-MM-dd HH:mm:ss");
                                    var end = $.fullCalendar.formatDate(getEnd(), "yyyy-MM-dd HH:mm:ss");
                                    $.ajax({
                                        url: '../Events?ban=3',
                                        data: 'title=' + title + '&start=' + start + '&end=' + end + '&url=' + url,
                                        type: "POST",
                                        async: false,
                                        success: function(json) {
                                            id = dameID(json);
                                            set_id(id);
                                            alert('Evento agregado correctamente');
                                        }
                                    });
                                    function dameID(json) {
                                        var json = JSON.parse(json);
                                        for (var i = 0; i < json.length; i++) {
                                            id = json[i].id;
                                        }
                                        return id;
                                    }
                                    function set_id(id_aj) {
                                        id = id_aj;
                                    }
                                    calendar.fullCalendar('renderEvent',
                                            {
                                                id: id,
                                                title: title,
                                                start: start,
                                                end: end,
                                                allDay: allDay
                                            },
                                    true // make the event "stick"
                                            );
                                }
                                calendar.fullCalendar('unselect');
                            }
                        });

                        return false;
                    }
                    ,
                    editable: true,
                            eventDrop: function(event, delta) {
                                var start = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd HH:mm:ss");
                                var end = $.fullCalendar.formatDate(event.end, "yyyy-MM-dd HH:mm:ss");
                                $.ajax({
                                    url: '../Events?ban=2',
                                    data: 'title=' + event.title + '&start=' + start + '&end=' + end + '&id=' + event.id,
                                    type: "POST",
                                    success: function(json) {
                                        alert("Evento actualizado correctamente");
                                    }
                                });
                            },
                    eventResize: function(event) {
                        var start = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd HH:mm:ss");
                        var end = $.fullCalendar.formatDate(event.end, "yyyy-MM-dd HH:mm:ss");
                        $.ajax({
                            url: '../Events?ban=2',
                            data: 'title=' + event.title + '&start=' + start + '&end=' + end + '&id=' + event.id,
                            type: "POST",
                            success: function(json) {
                                alert("Evento actualizado correctamente");
                            }
                        });

                    }
                })
            });

        });

    </script>
</html>