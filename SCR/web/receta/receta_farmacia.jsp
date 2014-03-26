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

    String folio_rec = "", nom_com = "", sexo = "", fec_nac = "", num_afi = "", carnet = "", id_rec = "";
    try {
        folio_rec = (String) sesion.getAttribute("folio_rec");
        nom_com = (String) sesion.getAttribute("nom_com");
        sexo = (String) sesion.getAttribute("sexo");
        fec_nac = (String) sesion.getAttribute("fec_nac");
        num_afi = (String) sesion.getAttribute("num_afi");
        try {
            con.conectar();
            ResultSet rset = con.consulta("select carnet, id_rec from receta where fol_rec = '" + folio_rec + "'");
            while (rset.next()) {
                carnet = rset.getString("carnet");
                id_rec = rset.getString("id_rec");
            }
            con.cierraConexion();
        } catch (Exception e) {

        }
    } catch (Exception e) {
    }
    System.out.println("folio***" + folio_rec);
    if (folio_rec == null || folio_rec.equals("")) {
        folio_rec = "";
        nom_com = "";
        sexo = "";
        fec_nac = "";
        num_afi = "";
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
    <body onload="focoInicial();">
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
                                    <input name="folio" type="text" class="form-control" id="folio" placeholder="Folio"  value="<%=folio_rec%>" readonly>
                                </div>
                                <div class="col-sm-2" id="respuesta">
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <label for="sp_pac" class="col-sm-1 control-label">No. SP</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="sp_pac" onkeypress="return isNumberKey(event);
                                            return tabular(event, this);" name="sp_pac" placeholder="Folio SP"  value=""/>
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
                                    <input type="text" class="form-control" id="nombre_jq" name="nombre_jq" placeholder="Nombre" onkeypress="return tabular(event, this);" autofocus value="<%=nom_com%>">
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-block btn-primary" name="mostrar2" id="mostrar2">Mostrar</button>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="nom_pac" class="col-sm-1 control-label">Paciente</label>
                                <div class="col-sm-4">
                                    <input name="nom_pac" type="text" class="form-control" id="nom_pac" placeholder="Paciente"  value="<%=nom_com%>" readonly/>
                                </div>
                                <label for="sexo" class="col-sm-1 control-label">Sexo</label>
                                <div class="col-sm-2">
                                    <input name="sexo" type="text" class="form-control" id="sexo" placeholder="Sexo"  value="<%=sexo%>" readonly/>
                                </div>
                                <label for="fec_nac" class="col-sm-2 control-label">Fecha Nac.</label>
                                <div class="col-sm-2"><input name="fec_nac" type="text" class="form-control" id="fec_nac" placeholder="Fecha de Nacimiento"  value="<%=fec_nac%>" readonly></div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="fol_sp" class="col-sm-1 control-label">Folio SP.</label>
                                <div class="col-sm-3">
                                    <input name="fol_sp" type="text" class="form-control" id="fol_sp" placeholder="Folio SP."  value="<%=num_afi%>" readonly/>
                                </div>
                                <label for="carnet" class="col-sm-1 control-label">Carnet</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="carnet" name="carnet" onkeypress="return tabular(event, this);" placeholder="Carnet"  value="<%=carnet%>"/>
                                </div>
                                <label for="fol_sp" class="col-sm-2 control-label"></label>
                                <div class="col-sm-3">
                                    <button class="btn btn-block btn-info" onkeypress="return tabular(event, this);" >Nuevo paciente</button>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <label for="cla_pro" class="col-sm-1 control-label">Clave</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="cla_pro" name="cla_pro" placeholder="Clave" onkeypress="return tabular(event, this);"  value=""/>
                                </div>
                                <div class="col-sm-1">
                                    <button class="btn btn-block btn-primary" name="btn_clave" id="btn_clave">Clave</button>
                                </div>
                                <label for="des_pro" class="col-sm-1 control-label">Descripción</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="des_pro" name="des_pro" placeholder="Descripción"  onkeypress="return tabular(event, this);"  value="">
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-block btn-primary"name="btn_descripcion" id="btn_descripcion">Descripción</button>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="existencias" class="col-sm-2 control-label">Existencias:</label>

                                <label for="ori1" class="col-sm-1 control-label">Origen 1</label>
                                <div class="col-sm-2">
                                    <input name="ori1" type="text" class="form-control" id="ori1" placeholder="0"  value="0" readonly>
                                </div>
                                <label for="ori2" class="col-sm-1 control-label">Origen 2</label>
                                <div class="col-sm-2">
                                    <input name="ori2" type="text" class="form-control" id="ori2" placeholder="0"  value="0" readonly>
                                </div>
                                <label for="existencias" class="col-sm-1 control-label">Total</label>
                                <div class="col-sm-2">
                                    <input name="existencias" type="text" class="form-control" id="existencias" placeholder="0"  value="0" readonly/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="indica" class="col-sm-1 control-label">Indicaciones</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="indica" name="indica" placeholder="Indicaciones"  onkeypress="return tabular(event, this);"  value=""/>
                                </div>
                                <label for="causes" class="col-sm-1 control-label">Causes</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="causes" name="causes" placeholder="Causes"  onkeypress="return tabular(event, this);
                                            return isNumberKey(event);" value="">
                                </div>
                                <label for="can_sol" class="col-sm-1 control-label">Cant. Sol</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="can_sol" name="can_sol" placeholder="0"  onkeypress="return tabular(event, this);
                                            return isNumberKey(event);" value="">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <button class="btn btn-block btn-primary" id="btn_capturar">Capturar</button>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <table class="table table-striped table-bordered" id="tablaMedicamentos">
                                <tr>
                                    <td>Clave</td>
                                    <td>Descripción</td>
                                    <td>Cant. Sol.</td>
                                    <td>Cant. Sur.</td>
                                    <td></td>
                                </tr>
                                <!--tr>
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
                                </tr-->
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
        <%
            try {
                con.conectar();
                ResultSet rset = con.consulta("select dr.fol_det, dr.can_sol, dr.cant_sur, dp.cla_pro, p.des_pro from detreceta dr, detalle_productos dp, productos p where dr.det_pro = dp.det_pro and dp.cla_pro = p.cla_pro and id_rec = '" + id_rec + "' ");
                while (rset.next()) {
                    //System.out.println(rset.getString("fol_det"));
%>
        <div class="modal fade" id="edita_clave_<%=rset.getString("fol_det")%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Edición del medicamento</h4>
                    </div>
                    <div class="modal-body">
                        <form name="form_editaInsumo_<%=rset.getString("fol_det")%>" method="post" id="form_editaInsumo_<%=rset.getString("fol_det")%>">
                            <input type="text" name="fol_det" class="hidden" value="<%=rset.getString("fol_det")%>">
                            Clave: <input type="text" class="form-control" autofocus placeholder="Ingrese su Nombre" name="txtf_nom" id="txtf_nom" value="<%=rset.getString("cla_pro")%>" readonly />
                            Descripción: <input type="text" class="form-control"  placeholder="Ingrese su Cuenta de Correo" name="txtf_cor" id="txtf_cor" value="<%=rset.getString("des_pro")%>" readonly />
                            Cantidad Solicitada: <input type="text" class="form-control"  placeholder="Cant Sol" name="cant_sol" id="cant_sol_<%=rset.getString("fol_det")%>" value="<%=rset.getString("can_sol")%>" />
                            Cantidad Surtida: <input type="text" class="form-control"  placeholder="Cant Sur" name="cant_sur" id="cant_sur_<%=rset.getString("fol_det")%>" value="<%=rset.getString("cant_sur")%>" readonly />
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal" id="btn_modificar_<%=rset.getString("fol_det")%>" name = "btn_modificar_<%=rset.getString("fol_det")%>">Modificar Solicitud</button>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <!--button type="button" class="btn btn-primary">Guardar Info</button-->
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


        <div class="modal fade" id="elimina_clave_<%=rset.getString("fol_det")%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabels" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Advertencia</h4>
                    </div>
                    <div class="modal-body">
                        <form name="form_eliminaInsumo_<%=rset.getString("fol_det")%>" method="post" id="form_eliminaInsumo_<%=rset.getString("fol_det")%>">
                            <input type="text" class="hidden" name="fol_det" value="<%=rset.getString("fol_det")%>">
                            ¿Esta seguro de eliminar este Medicamento?
                            <button type="button" class="btn btn-primary" data-dismiss="modal" value="<%=rset.getString("fol_det")%>" id="btn_eliminar_<%=rset.getString("fol_det")%>" name = "btn_eliminar<%=rset.getString("fol_det")%>">Eliminar</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <!--button type="button" class="btn btn-primary">Guardar Info</button-->
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
        <%
                }
                con.cierraConexion();
            } catch (Exception e) {
            }
        %>

    </body>


    <!-- 
    ================================================== -->
    <!-- Se coloca al final del documento para que cargue mas rapido -->
    <!-- Se debe de seguir ese orden al momento de llamar los JS -->
    <script src="../js/jquery-1.9.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery-ui-1.10.3.custom.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="../js/js_farmacia.js"></script>
    <script>
                                        /*
                                         * 
                                         * @returns {undefined}
                                         */

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
                                            $("#des_pro").autocomplete({
                                                source: availableTags
                                            });
                                        });



                                        $(document).ready(function() {
        <%
            try {
                con.conectar();
                ResultSet rset = con.consulta("select fol_det from detreceta where id_rec = '" + id_rec + "' ");
                while (rset.next()) {
                    //System.out.println(rset.getString("fol_det"));
%>
                                            $('#btn_modificar_<%=rset.getString("fol_det")%>').click(function() {
                                                var dir = '../EditaMedicamento';
                                                var form = $('#form_editaInsumo_<%=rset.getString("fol_det")%>');
                                                var cant_sol = $('#cant_sol_<%=rset.getString("fol_det")%>');
                                                if (cant_sol === "") {
                                                    alert("No puede ir el campo de solicitado vacío");
                                                }
                                                else {

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
                                                }
                                            });


                                            $('#btn_eliminar_<%=rset.getString("fol_det")%>').click(function() {
                                                var dir = '../EliminaClave';
                                                var form = $('#form_eliminaInsumo_<%=rset.getString("fol_det")%>');
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
        <%
                }
                con.cierraConexion();
            } catch (Exception e) {
            }
        %>

                                        });
    </script>
</html>