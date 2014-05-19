<%-- 
    Document   : alta_pacientes
    Created on : 10-mar-2014, 9:14:09
    Author     : Americo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap -->
        <link href="../../css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="../../css/pie-pagina.css" rel="stylesheet" media="screen">
        <link href="../../css/topPadding.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <title>JSP Page</title>
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
                <a class="navbar-brand" href="#">SIALSS</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administración de Médicos<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../medicos/adminMedicos.jsp">Alta de Médicos</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                    <!--a href="#rc">Receta Colectiva</a-->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administración de Pacientes<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="alta_pacientes.jsp">Alta de Pacientes</a></li>
                            <li><a href="editar_paciente.jsp">Edición de Pacientes</a></li>
                            <!--li class="divider"></li>
                            <li><a href="#rf">Reimpresión de Comprobantes</a></li-->
                        </ul>
                    </li>
                </ul>
                <div class="navbar-form navbar-right">
                    <a class="btn btn-default" href="../../index_admin.jsp">Salir</a>
                </div>
            </div><!--/.nav-collapse -->
        </div>
        <div class="container-fluid">
            <div class="container">
                <h3>Navegación y Edición de Pacientes</h3>
                <div class="panel panel-default">
                    <form class="form-horizontal" role="form" name="formulario1" id="formulario1" method="post" action="">
                        <div class="panel-body">
                            <div class="row">
                                <label for="no_afi" class="col-sm-2 control-label">Número de Afiliación</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="no_afi" name="no_afi" placeholder=""  value=""/>
                                </div>
                                <label for="tip_cob" class="col-sm-2 control-label">Tipo de Cobranza</label>
                                <div class="col-sm-2">
                                    <select class="form-control">
                                        <option>SP</option>
                                        <option>OP</option>
                                        <option>PA</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <label for="ape_pat" class="col-sm-2 control-label">Apellido Paterno</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="ape_pat" name="ape_pat" placeholder=""  value=""/>
                                </div>
                                <label for="ape_mat" class="col-sm-2 control-label">Apellido Materno</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="ape_mat" name="ape_mat" placeholder=""  value=""/>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <label for="nombre" class="col-sm-2 control-label">Nombre(s)</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder=""  value=""/>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <label for="fec_nac" class="col-sm-2 control-label">Fecha de Nacimiento</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="fec_nac" name="fec_nac" placeholder=""  value=""/>
                                </div>
                                <label for="sexo" class="col-sm-1 control-label">Sexo</label>
                                <div class="col-sm-2">
                                    <select class="form-control">
                                        <option>Hombre</option>
                                        <option>Mujer</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <h4>Datos de la Poliza</h4>
                            <div class="row">
                                <label for="ini_vig" class="col-sm-2 control-label">Inicio de Vigencia</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="ini_vig" name="ini_vig" placeholder=""  value=""/>
                                </div>
                                <label for="fin_vig" class="col-sm-2 control-label">Fin de Vigencia</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="fin_vig" name="fin_vig" placeholder=""  value=""/>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <button class="btn btn-block btn-primary">Actualizar</button>
                            </div>
                        </div>
                    </form>
                </div>
                <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="datosProv">
                    <thead>
                        <tr>
                            <td>Número de Afiliación</td>
                            <td>Nombre</td>
                            <td>Teléfono</td>
                            <td>Opciones</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><small>213215651321</small></td>
                            <td><small>AMÉRICO QUETZALLI GUZMÁN AGUILAR</small></td>
                            <td><small>(618)167-6165</small></td>
                            <td>
                                <div class="row">
                                    <form class="form-horizontal" role="form" name="formulario2" id="formulario2" method="post" action="" >
                                        <div class="row">
                                            <div class="col-lg-1"></div>
                                            <div class="col-lg-4">
                                                <button class="btn btn-warning btn-block" name="accion" value="modificar"><span class="glyphicon glyphicon-pencil" ></span></button>
                                            </div>
                                            <div class="col-lg-4">
                                                <button class="btn btn-danger btn-block" name="accion" value="modificar"><span class="glyphicon glyphicon-remove" ></span></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </td>
                        </tr>

                    </tbody>
                </table>

            </div>
        </div>
    </body>
    <!-- 
    ================================================== -->
    <!-- Se coloca al final del documento para que cargue mas rapido -->
    <!-- Se debe de seguir ese orden al momento de llamar los JS -->
    <script src="../../js/jquery-1.9.1.js"></script>
    <script src="../../js/bootstrap.js"></script>
    <script src="../../js/jquery-ui-1.10.3.custom.js"></script>
    <script src="../../js/jquery.dataTables.js"></script>
    <script src="../../js/dataTables.bootstrap.js"></script>
    <script src="../../js/Funciones.js"></script>
</html>