<%-- 
    Document   : index
    Created on : 07-mar-2014, 15:38:43
    Author     : Americo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
%>
<%java.text.DateFormat df = new java.text.SimpleDateFormat("yyyyMMddhhmmss"); %>
<%java.text.DateFormat df2 = new java.text.SimpleDateFormat("yyyy-MM-dd"); %>
<%java.text.DateFormat df3 = new java.text.SimpleDateFormat("dd/MM/yyyy");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/topPadding.css" rel="stylesheet">
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
                <a class="navbar-brand" href="#">SCR</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#rf">Receta Electronica</a></li>
                    <li><a href="#rc">Receta Colectiva</a></li>
                    <li><a href="#ap">Alta de Pacientes</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>

        <div class="container-fluid">
            <div class="container">
                <h3>Captura de Recetas</h3>
                <div class="panel panel-default">
                    <form class="form-horizontal" role="form" name="formulario1" id="formulario1" method="post" action="">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    Unidad de Salud: AQUÍ VA LA UNIDAD DE SALUD
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    Médico: AQUÍ VA NOMBRE DEL MÉDICO
                                </div>
                                <div class="col-md-6">
                                    Cédula: AQUÍ VA LA CÉDULA DEL MÉDICO
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <label for="folio" class="col-sm-1 control-label">Fecha</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="fecha" name="fecha" placeholder=""  value="<%=df3.format(new java.util.Date())%>"/>
                                </div>
                                <label for="fecha" class="col-sm-1 control-label">Folio</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="folio" name="folio" placeholder="Folio"  value="">
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <label for="folio" class="col-sm-1 control-label">No. SP</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="sp_pac" name="sp_pac" placeholder="Folio SP"  value=""/>
                                </div>
                                <div class="col-sm-1">
                                    <button class="btn btn-block btn-primary">Mostrar</button>
                                </div>
                                <div class="col-sm-4">
                                    <select class="form-control">
                                        <option>Seleccione Nombre</option>
                                    </select>
                                </div>
                                <label for="nombre_jq" class="col-sm-1 control-label">Nombre</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="nombre_jq" name="nombre_jq" placeholder="Nombre"  value="">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="nom_pac" class="col-sm-1 control-label">Paciente</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="nom_pac" name="nom_pac" placeholder="Paciente"  value=""/>
                                </div>
                                <label for="sexo" class="col-sm-1 control-label">Sexo</label>
                                <div class="col-sm-2">
                                    <select class="form-control">
                                        <option>Sexo</option>
                                    </select>
                                </div>
                                <label for="fec_nac" class="col-sm-2 control-label">Fecha Nac.</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="fec_nac" name="fec_nac" placeholder="Fecha de Nacimiento"  value="">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label for="fol_sp" class="col-sm-1 control-label">Folio SP.</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="fol_sp" name="fol_sp" placeholder="Folio SP."  value=""/>
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
                                    <button class="btn btn-block btn-primary">Clave</button>
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
                                <label for="cla_pro1" class="col-sm-2 control-label">Existencias</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="cla_pro1" name="cla_pro1" placeholder="Existencias"  value=""/>
                                </div>
                                <label for="des_pro1" class="col-sm-1 control-label">Origen 1</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="des_pro1" name="des_pro1" placeholder="Origen 1"  value="">
                                </div>
                                <label for="des_pro1" class="col-sm-1 control-label">Origen 2</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="des_pro1" name="des_pro1" placeholder="Origen 2"  value="">
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
                            Detalle de Receta
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>


<!-- 
================================================== -->
<!-- Se coloca al final del documento para que cargue mas rapido -->
<!-- Se debe de seguir ese orden al momento de llamar los JS -->
<script src="js/jquery-1.9.1.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>