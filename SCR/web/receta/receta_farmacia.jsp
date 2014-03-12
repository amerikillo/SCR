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
    String uni_ate = "", cedula = "", medico = "";
    try {
        id_usu = (String) session.getAttribute("id_usu");
        uni_ate = (String) session.getAttribute("cla_uni");
        cedula = (String) session.getAttribute("cedula");
        medico = (String) session.getAttribute("id_usu");

        con.conectar();
        try {
            ResultSet rset = con.consulta("select us.nombre, un.des_uni from usuarios us, unidades un where us.cla_uni = un.cla_uni and us.id_usu = '" + id_usu + "' ");
            while (rset.next()) {
                medico = rset.getString(1);
                uni_ate = rset.getString(2);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        con.cierraConexion();
    } catch (Exception e) {
    }
    try {
        if (id_usu == null) {
            response.sendRedirect("../index.jsp");
        }
    } catch (Exception e) {
    }

%>
<%java.text.DateFormat df = new java.text.SimpleDateFormat("yyyyMMddhhmmss"); %>
<%java.text.DateFormat df2 = new java.text.SimpleDateFormat("yyyy-MM-dd"); %>
<%java.text.DateFormat df3 = new java.text.SimpleDateFormat("dd/MM/yyyy");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap -->
        <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="../css/pie-pagina.css" rel="stylesheet" media="screen">
        <link href="../css/topPadding.css" rel="stylesheet">
        <link href="../css/datepicker3.css" rel="stylesheet">
        <link href="../css/cupertino/jquery-ui-1.10.3.custom.css" rel="stylesheet">
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
                <a class="navbar-brand" href="../main_menu.jsp">SCR</a>
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
                            <li><a href="../receta/receta_farmacia.jsp">Captura de Receta</a></li>
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
                <h3>Captura de Recetas</h3>
                <div class="panel panel-default">
                    <form class="form-horizontal" role="form" name="formulario_receta" id="formulario_receta" method="get" action="../Receta">
                        <div class="panel-body">
                            <div class="row">
                                <label for="fecha" class="col-sm-2 control-label"> Unidad de Salud:</label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control" id="uni_ate" readonly name="uni_ate" placeholder="" value="<%=uni_ate%>"/>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <label for="fecha" class="col-sm-1 control-label"> Médico:</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" id="medico" readonly name="medico" placeholder="" value="<%=medico%>"/>
                                </div>
                                <label for="fecha" class="col-sm-1 control-label"> Cédula:</label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control" id="cedula" readonly name="cedula" placeholder="" value="<%=cedula%>"/>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <label for="fecha" class="col-sm-1 control-label">Fecha</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="fecha" readonly name="fecha" placeholder="" data-date-format="dd/mm/yyyy" value="<%=df3.format(new java.util.Date())%>"/>
                                </div>
                                <label for="fecha" class="col-sm-1 control-label">Folio</label>
                                <div class="col-sm-2">
                                    <input name="folio" type="text" class="form-control" id="folio" placeholder="Folio"  value="" readonly>
                                </div>
                                <div class="col-sm-2" id="respuesta">
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <label for="sp_pac" class="col-sm-1 control-label">No. SP</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="sp_pac" onkeypress="return isNumberKey(event)" name="sp_pac" placeholder="Folio SP"  value=""/>
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-block btn-primary" name="mostrar1" id="mostrar1">Mostrar</button>
                                </div>
                                <div class="col-sm-7">
                                    <select class="form-control" id="select_pac" name="select_pac">
                                        <option>Seleccione Nombre</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <label for="nombre_jq" class="col-sm-1 control-label">Nombre</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="nombre_jq" name="nombre_jq" placeholder="Nombre"  value="">
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-block btn-primary" name="mostrar2" id="mostrar2">Mostrar</button>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="nom_pac" class="col-sm-1 control-label">Paciente</label>
                                <div class="col-sm-3">
                                    <input name="nom_pac" type="text" class="form-control" id="nom_pac" placeholder="Paciente"  value="" readonly/>
                                </div>
                                <label for="sexo" class="col-sm-1 control-label">Sexo</label>
                                <div class="col-sm-2">
                                    <input name="sexo" type="text" class="form-control" id="sexo" placeholder="Sexo"  value="" readonly/>
                                </div>
                                <label for="fec_nac" class="col-sm-2 control-label">Fecha Nac.</label>
                                <div class="col-sm-3">
                                    <input name="fec_nac" type="text" class="form-control" id="fec_nac" placeholder="Fecha de Nacimiento"  value="" readonly>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="fol_sp" class="col-sm-1 control-label">Folio SP.</label>
                                <div class="col-sm-3">
                                    <input name="fol_sp" type="text" class="form-control" id="fol_sp" placeholder="Folio SP."  value="" readonly/>
                                </div>
                                <label for="carnet" class="col-sm-1 control-label">Carnet</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="carnet" name="carnet" placeholder="Carnet"  value=""/>
                                </div>
                                <label for="fol_sp" class="col-sm-2 control-label"></label>
                                <div class="col-sm-3">
                                    <button class="btn btn-block btn-info">Nuevo paciente</button>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <label for="cla_pro1" class="col-sm-1 control-label">Clave</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="cla_pro1" name="cla_pro1" placeholder="Clave"  value=""/>
                                </div>
                                <div class="col-sm-1">
                                    <button class="btn btn-block btn-primary" name="btn_clave" id="btn_clave">Clave</button>
                                </div>
                                <label for="des_pro1" class="col-sm-1 control-label">Descripción</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="des_pro1" name="des_pro1" placeholder="Descripción"  value="">
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-block btn-primary">Descripción</button>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="existencias" class="col-sm-2 control-label">Existencias</label>

                                <label for="ori1" class="col-sm-1 control-label">Origen 1</label>
                                <div class="col-sm-2">
                                    <input name="ori1" type="text" class="form-control" id="ori1" placeholder="Origen 1"  value="" readonly>
                                </div>
                                <label for="ori2" class="col-sm-1 control-label">Origen 2</label>
                                <div class="col-sm-2">
                                    <input name="ori2" type="text" class="form-control" id="ori2" placeholder="Origen 2"  value="" readonly>
                                </div>
                                <label for="existencias" class="col-sm-2 control-label">Total</label>
                                <div class="col-sm-2">
                                    <input name="existencias" type="text" class="form-control" id="existencias" placeholder="Existencias"  value="" readonly/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="indica" class="col-sm-1 control-label">Indicaciones</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="indica" name="indica" placeholder="Indicaciones"  value=""/>
                                </div>
                                <label for="causes" class="col-sm-1 control-label">Causes</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="causes" name="causes" placeholder="Causes"  value="">
                                </div>
                                <label for="can_sol" class="col-sm-1 control-label">Cant. Sol</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="can_sol" name="can_sol" placeholder="0"  value="">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <button class="btn btn-block btn-primary">Capturar</button>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <table class="table table-striped table-bordered">
                                <tr>
                                    <td>Clave</td>
                                    <td>Descripción</td>
                                    <td>Cant. Sol.</td>
                                    <td>Cant. Sur.</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>0104</td>
                                    <td>Paracetamol 10 tab 500mg</td>
                                    <td>5</td>
                                    <td>5</td>
                                    <td>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <button class="btn btn-warning btn-block" name="accion" value="modificar"><span class="glyphicon glyphicon-pencil" ></span></button>
                                            </div>
                                            <div class="col-lg-6">
                                                <button class="btn btn-danger btn-block" name="accion" value="modificar"><span class="glyphicon glyphicon-remove" ></span></button>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>0105</td>
                                    <td>Paracetamol 3 supositorios 300 mg</td>
                                    <td>3</td>
                                    <td>3</td>
                                    <td><div class="row">
                                            <div class="col-lg-6">
                                                <button class="btn btn-warning btn-block" name="accion" value="modificar"><span class="glyphicon glyphicon-pencil" ></span></button>
                                            </div>
                                            <div class="col-lg-6">
                                                <button class="btn btn-danger btn-block" name="accion" value="modificar"><span class="glyphicon glyphicon-remove" ></span></button>
                                            </div>
                                        </div></td>
                                </tr>
                            </table>
                            <div class="row">
                                <div class="col-lg-6"></div>
                                <div class="col-lg-3">
                                    <button class="btn btn-warning btn-block" name="accion" value="modificar">Cerrar Receta</button>
                                </div>
                                <div class="col-lg-3">
                                    <button class="btn btn-success btn-block" name="accion" value="modificar">Imprimir Comprobante</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--div id="footer">
            <div class="container">
                <p class="text-muted">Place sticky footer content here.</p>
            </div>
        </div-->
    </body>


    <!-- 
    ================================================== -->
    <!-- Se coloca al final del documento para que cargue mas rapido -->
    <!-- Se debe de seguir ese orden al momento de llamar los JS -->
    <script src="../js/jquery-1.9.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery-ui-1.10.3.custom.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script>

                                        function isNumberKey(evt)
                                        {
                                            var charCode = (evt.which) ? evt.which : event.keyCode
                                            if (charCode > 31 && (charCode < 48 || charCode > 57))
                                                return false;
                                            return true;
                                        }

                                        $(function() {
                                            $("#fecha").datepicker();
                                            $("#Caducidad").datepicker('option', {dateFormat: 'dd/mm/yy'});
                                        });
                                        $(function() {
                                            var availableTags = [
        <%
            try {
                con.conectar();
                try {
                    ResultSet rset = con.consulta("select id_pac, nom_com from pacientes");
                    while (rset.next()) {
                        out.println("'" + rset.getString(2) + "',");
                    }
                } catch (Exception e) {

                }
                con.cierraConexion();
            } catch (Exception e) {

            }
        %>
                                            ];
                                            $("#nombre_jq").autocomplete({
                                                source: availableTags
                                            });
                                        });
                                        $(function() {
                                            var availableTags = [
        <%
            try {
                con.conectar();
                try {
                    ResultSet rset = con.consulta("select des_pro from productos");
                    while (rset.next()) {
                        out.println("'" + rset.getString(1) + "',");
                    }
                } catch (Exception e) {

                }
                con.cierraConexion();
            } catch (Exception e) {

            }
        %>
                                            ];
                                            $("#des_pro1").autocomplete({
                                                source: availableTags
                                            });
                                        });
                                        $(document).ready(function() {

                                            $('#btn_clave').click(function() {
                                                var dir = '../ProductoClave';
                                                var form = $('#formulario_receta');
                                                $.ajax({
                                                    type: form.attr('method'),
                                                    url: dir,
                                                    data: form.serialize(),
                                                    success: function(data) {
                                                        devuelveFolio(data);
                                                    },
                                                    error: function() {
                                                        alert("Ha ocurrido un error");
                                                    }
                                                });
                                                function devuelveFolio(data) {
                                                    var fol_rec = json[i].fol_rec;
                                                    var nom_com = json[i].nom_com;
                                                    var sexo = json[i].sexo;
                                                    var fec_nac = json[i].fec_nac;
                                                    $("#ori1").attr("value", "");
                                                    $("#ori2").attr("value", "");
                                                    $("#existencias").attr("value", "");
                                                    $("#des_pro").attr("value", "");
                                                }
                                            });

                                            $('#formulario_receta').submit(function() {
                                                //alert("Ingresó");
                                                return false;
                                            });

                                            $('#mostrar1').click(function() {
                                                var sp_pac = $('#sp_pac').val();
                                                var dir = '../Receta';
                                                var form = $('#formulario_receta');
                                                $.ajax({
                                                    type: form.attr('method'),
                                                    url: dir,
                                                    data: form.serialize(),
                                                    success: function(data) {
                                                        devuelveFolio(data);
                                                    },
                                                    error: function() {
                                                        alert("Ha ocurrido un error");
                                                    }
                                                });
                                                function devuelveFolio(data) {
                                                    var json = JSON.parse(data);
                                                    $('#select_pac').empty();
                                                    $('#select_pac').append(
                                                            $('<option>', {
                                                                value: "",
                                                                text: "--Seleccione una Opción--"
                                                            }));
                                                    for (var i = 0; i < json.length; i++) {
                                                        var fol_rec = json[i].fol_rec;
                                                        var nom_com = json[i].nom_com;
                                                        var sexo = json[i].sexo;
                                                        var fec_nac = json[i].fec_nac;
                                                        var num_afi = json[i].num_afi;
                                                        var mensaje = json[i].mensaje;
                                                        // alert(nom_com);

                                                        $('#select_pac').append(
                                                                $('<option>', {
                                                                    value: nom_com,
                                                                    text: nom_com
                                                                }));

                                                        if (mensaje != "") {
                                                            alert("Paciente Inexistente");
                                                        }
                                                    }
                                                }
                                            });


                                            $('#select_pac').change(function() {
                                                var select_pac = $('#select_pac').val();
                                                //alert(sp_pac);
                                                var dir = '../RecetaNombre';
                                                var form = $('#formulario_receta');
                                                $.ajax({
                                                    type: form.attr('method'),
                                                    url: dir,
                                                    data: form.serialize(),
                                                    success: function(data) {
                                                        devuelveFolio(data);
                                                    },
                                                    error: function() {
                                                        alert("Ha ocurrido un error");
                                                    }
                                                });
                                                function devuelveFolio(data) {
                                                    var json = JSON.parse(data);
                                                    for (var i = 0; i < json.length; i++) {
                                                        var fol_rec = json[i].fol_rec;
                                                        var nom_com = json[i].nom_com;
                                                        var sexo = json[i].sexo;
                                                        var fec_nac = json[i].fec_nac;
                                                        var num_afi = json[i].num_afi;
                                                        var mensaje = json[i].mensaje;
                                                        $("#folio").attr("value", fol_rec);
                                                        $("#nom_pac").attr("value", nom_com);
                                                        $("#sexo").attr("value", sexo);
                                                        $("#fec_nac").attr("value", fec_nac);
                                                        $("#fol_sp").attr("value", num_afi);
                                                        if (mensaje === "vig_no_val") {
                                                            alert("Vigencia no Valida");
                                                            $("#nom_pac").attr("value", "");
                                                            $("#sexo").attr("value", "");
                                                            $("#fec_nac").attr("value", "");
                                                            $("#fol_sp").attr("value", "");
                                                        }
                                                        if (mensaje === "inexistente") {
                                                            alert("Paciente Inexistente");
                                                            $("#nom_pac").attr("value", "");
                                                            $("#sexo").attr("value", "");
                                                            $("#fec_nac").attr("value", "");
                                                            $("#fol_sp").attr("value", "");
                                                        }
                                                    }
                                                }
                                            });

                                            $('#mostrar2').click(function() {
                                                var sp_pac = $('#sp_pac').val();
                                                var dir = '../RecetaNombre';
                                                var form = $('#formulario_receta');
                                                $.ajax({
                                                    type: form.attr('method'),
                                                    url: dir,
                                                    data: form.serialize(),
                                                    success: function(data) {
                                                        devuelveFolio(data);
                                                    },
                                                    error: function() {
                                                        alert("Ha ocurrido un error");
                                                    }
                                                });
                                                function devuelveFolio(data) {
                                                    var json = JSON.parse(data);
                                                    for (var i = 0; i < json.length; i++) {
                                                        var fol_rec = json[i].fol_rec;
                                                        var nom_com = json[i].nom_com;
                                                        var sexo = json[i].sexo;
                                                        var fec_nac = json[i].fec_nac;
                                                        var num_afi = json[i].num_afi;
                                                        var mensaje = json[i].mensaje;
                                                        $("#folio").attr("value", fol_rec);
                                                        $("#nom_pac").attr("value", nom_com);
                                                        $("#sexo").attr("value", sexo);
                                                        $("#fec_nac").attr("value", fec_nac);
                                                        $("#fol_sp").attr("value", num_afi);
                                                        if (mensaje === "vig_no_val") {
                                                            alert("Vigencia no Valida");
                                                            $("#nom_pac").attr("value", "");
                                                            $("#sexo").attr("value", "");
                                                            $("#fec_nac").attr("value", "");
                                                            $("#fol_sp").attr("value", "");
                                                        }
                                                        if (mensaje === "inexistente") {
                                                            alert("Paciente Inexistente");
                                                            $("#nom_pac").attr("value", "");
                                                            $("#sexo").attr("value", "");
                                                            $("#fec_nac").attr("value", "");
                                                            $("#fol_sp").attr("value", "");
                                                        }
                                                    }
                                                }
                                            });


                                        });


    </script>
</html>