<%-- 
    Document   : verClientes
    Created on : 03/05/2018, 01:01:27 AM
    Author     : Shuan
--%>

<%@page import="com.valenciav.crm.model.Empresa"%>
<%@page import="java.util.List"%>
<%@page import="com.valenciav.crm.model.PersonaNatural"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre = (String) session.getAttribute("nombre");
    if (nombre == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<script>
    function editar() {
        var cod = $("#codigo").val(); //se tiene el objeto select
        document.load("Editar", {codigo: cod});
    }
</script>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRM Automotriz</title>
        <!-- Core CSS - Include with every page -->
        <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/css/main-style.css" rel="stylesheet" />

        <!-- Page-Level CSS -->
        <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

    </head>

    <body onload="noback();">
        <script>
            function noback() {
                window.location.hash = "";
                window.location.hash = "Again-No-back-button";
                window.onhashchange = function () {
                    window.location.hash = "";
                };
            }
        </script>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">
                        <img src="assets/img/logo.png" alt="" />
                    </a>
                </div>

                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="top-label label label-danger">3</span><i class="fa fa-envelope fa-3x"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong><span class=" label label-danger">Andrew Smith</span></strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong><span class=" label label-info">Jonney Depp</span></strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong><span class=" label label-success">Jonney Depp</span></strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="top-label label label-success">4</span>  <i class="fa fa-tasks fa-3x"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-tasks">
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 1</strong>
                                            <span class="pull-right text-muted">40% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 2</strong>
                                            <span class="pull-right text-muted">20% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 3</strong>
                                            <span class="pull-right text-muted">60% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 4</strong>
                                            <span class="pull-right text-muted">80% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Tasks</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="top-label label label-warning">5</span>  <i class="fa fa-bell fa-3x"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i>New Comment
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i>3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i>Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i>New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i>Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-3x"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="LOGOUT"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <!-- user image section-->
                            <div class="user-section">
                                <div class="user-section-inner">
                                    <img src="assets/img/user.jpg" alt="">
                                </div>
                                <div class="user-info">
                                    <div><%=request.getSession().getAttribute("nombre")%>  <strong><%=request.getSession().getAttribute("apellido")%> </strong></div>
                                    <div class="user-text-online">
                                        <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                    </div>
                                </div>
                            </div>
                            <!--end user image section-->
                        </li>
                        <li class="sidebar-search">
                            <!-- search section-->
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!--end search section-->
                        </li>
                        <li>
                            <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                        </li>
                        <li class="selected">
                            <a href="Cliente"><i class="fa fa-bar-chart-o fa-fw"></i> Clientes</a>
                            <!--                            <ul class="nav nav-second-level">
                                                            <li>
                                                                <a href="registrarCliente.jsp">Clientes</a>
                                                            </li>
                                                        </ul>-->
                        </li>
                        <li>
                            <a href="Venta"><i class="fa fa-bar-chart-o fa-fw"></i> Ventas</a>
                            <!--                            <ul class="nav nav-second-level">
                                                            <li>
                                                                <a href="Cliente">Clientes</a>
                                                            </li>
                                                            <li>
                                                                <a href="Venta">Ventas</a>
                                                            </li>
                                                        </ul>-->
                        </li>
                        <!--
                        <li class="selected">
                            <a href="tables.html"><i class="fa fa-table fa-fw"></i>Tables</a>
                        </li>
                        <li>
                            <a href="forms.html"><i class="fa fa-edit fa-fw"></i>Forms</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i>UI Elements<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panels-wells.html">Panels and Wells</a>
                                </li>
                                <li>
                                    <a href="buttons.html">Buttons</a>
                                </li>
                                <li>
                                    <a href="notifications.html">Notifications</a>
                                </li>
                                <li>
                                    <a href="typography.html">Typography</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grid</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i>Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i>Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                        </li> -->
                    </ul>
                </div>
            </nav>
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Gestión Clientes</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">

                            <div class="panel-heading">Lista de Clientes</div>

                            <div class="panel-body">

                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#persona-tabs" data-toggle="tab">Persona Natural</a></li>
                                    <li><a href="#empresa-tabs" data-toggle="tab">Empresa</a></li>
                                    <a href="registrarCliente.jsp">
                                        <button type="button" class="btn btn-default"> Agregar <i class="fa fa-plus"></i></button>
                                    </a>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="persona-tabs">
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover" id="dataTables1-example">
                                                    <thead>
                                                        <tr>
                                                            <th>N°</th>
                                                            <th>DNI</th>
                                                            <th>Nombres</th>
                                                            <th>A. Paterno</th>
                                                            <th>A. Materno</th>
                                                            <th>Movil</th>
                                                            <th>Telefono</th>
                                                            <th>Email</th>
                                                            <th>Editar</th>
                                                            <th>Eliminar</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            List<PersonaNatural> pers = (List<PersonaNatural>) request.getSession().getAttribute("listaPersonas");
                                                            for (int i = 0; i < pers.size(); i++) {
                                                        %>
                                                        <tr class="odd gradeX">
                                                            <td><%=i + 1%></td>
                                                            <td><%=pers.get(i).getDni()%></td>
                                                            <td><%=pers.get(i).getNombre()%></td>
                                                            <td><%=pers.get(i).getaPaterno()%></td>
                                                            <td><%=pers.get(i).getaMaterno()%></td>
                                                            <td><%=pers.get(i).getMovil()%></td>
                                                            <td><%=pers.get(i).getTelefono()%></td>
                                                            <td><%=pers.get(i).getEmail()%></td>
                                                            <td><center><button type="button" class="btn btn-default btn-circle" data-toggle="modal" data-target="#myModalEditar<%=i + 1%>"><i class="fa fa-pencil"></i></button></center></td>
                                                            <td><center><button type="button" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#myModalEliminar<%=i + 1%>"><i class="fa fa-times"></i></button></center></td>
                                                    </tr>
                                                    <div class="modal fade" id="myModalEditar<%=i + 1%>" role="dialog">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                    <h4 class="modal-title">Editar Cliente</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p>Persona Natural</p>
                                                                    <form method="post" action="Cliente">
                                                                        <div id="dni" class="form-group">
                                                                            <label>DNI:</label>
                                                                            <input id="dni" class="input-control" name="dni" type="text" value="<%=pers.get(i).getDni()%>" readonly>
                                                                        </div>
                                                                        <div id="name" class="form-group">
                                                                            <label>Nombres:</label>
                                                                            <input id="name" class="form-control" name="name" type="text" maxlength="30" value="<%=pers.get(i).getNombre()%>" required>
                                                                        </div>
                                                                        <div id="apaterno" class="form-group">
                                                                            <label>Apellido Paterno:</label>
                                                                            <input id="apaterno" class="form-control" name="apaterno" type="text" maxlength="30" value="<%=pers.get(i).getaPaterno()%>" required>
                                                                        </div>
                                                                        <div id="amaterno" class="form-group">
                                                                            <label>Apellido Materno:</label>
                                                                            <input id="amaterno" class="form-control" name="amaterno" type="text" maxlength="30" value="<%=pers.get(i).getaMaterno()%>" required>
                                                                        </div>
                                                                        <div id="telefono" class="form-group">
                                                                            <label>Telefono Fijo:</label>
                                                                            <input id="telefono" class="input-control" name="telefono" type="text" minlength="7" maxlength="7" value="<%=pers.get(i).getTelefono()%>">
                                                                        </div>
                                                                        <div id="movil" class="form-group">
                                                                            <label>Movil:</label>
                                                                            <input id="movil" class="input-control" name="movil" type="text" minlength="9" maxlength="9" value="<%=pers.get(i).getMovil()%>">
                                                                        </div>
                                                                        <div id="email" class="form-group">
                                                                            <label>Email:</label>
                                                                            <input id="email" class="form-control" name="email" type="text" maxlength="50" value="<%=pers.get(i).getEmail()%>" required>
                                                                        </div>
                                                                        <div id="cliente">
                                                                            <input id="cliente" class="form-control" name="cliente" value="persona" style="visibility:hidden">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <center>
                                                                                <input id="submit_button" class="btn btn-default" type="submit" value="Aceptar" style="margin-right: 100px;"/>
                                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                                            </center>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <center>
                                                        <div class="modal fade" id="myModalEliminar<%=i + 1%>" role="dialog">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="width: 402px;height: 202px;">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                        <h4 class="modal-title">Eliminar Cliente</h4>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <center>¿Desea eliminar el cliente con DNI: <%=pers.get(i).getDni()%></center>
                                                                        <form method="post" action="Cliente">
                                                                            <div id="dni" class="form-group" style="visibility:hidden;margin-bottom: 0px;">
                                                                                <input id="dni" class="input-control" name="dni" type="text" value="<%=pers.get(i).getDni()%>">
                                                                            </div>
                                                                            <div id="cliente" style="visibility:hidden;height: 0px;">
                                                                                <input id="cliente" class="form-control" name="cliente" value="persona">
                                                                            </div>
                                                                            <div id="" class="form-group" style="margin-bottom: 0px;">
                                                                                <center>
                                                                                    <input id="submit_button" class="btn btn-default" type="submit" name="funcion" value="Eliminar" style="margin-right: 100px;"/>
                                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                                                </center>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </center>
                                                    <%
                                                        }
                                                    %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="empresa-tabs">
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover" id="dataTables2-example">
                                                    <thead>
                                                        <tr>
                                                            <th>N°</th>
                                                            <th>RUC</th>
                                                            <th>Razon Social</th>
                                                            <th>Tipo</th>
                                                            <th>Movil</th>
                                                            <th>Telefono</th>
                                                            <th>Email</th>
                                                            <th>Editar</th>
                                                            <th>Eliminar</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            List<Empresa> empr = (List<Empresa>) request.getSession().getAttribute("listaEmpresas");
                                                            for (int i = 0; i < empr.size(); i++) {
                                                        %>
                                                        <tr class="odd gradeX">
                                                            <td><%=i + 1%></td>
                                                            <td><%=empr.get(i).getRuc()%></td>
                                                            <td><%=empr.get(i).getRazonSocial()%></td>
                                                            <td><%=empr.get(i).getRubro()%></td>
                                                            <td><%=empr.get(i).getMovil()%></td>
                                                            <td><%=empr.get(i).getTelefono()%></td>
                                                            <td><%=empr.get(i).getEmail()%></td>
                                                            <td><center><button type="button" class="btn btn-default btn-circle" data-toggle="modal" data-target="#myModal2<%=i + 1%>"><i class="fa fa-pencil"></i></button></center></td>
                                                            <td><center><button type="button" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#myModalEliminar2<%=i + 1%>"><i class="fa fa-times"></i></button></center></td>
                                                    </tr>
                                                    <div class="modal fade" id="myModal2<%=i + 1%>" role="dialog">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                    <h4 class="modal-title">Editar Cliente</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p>Empresa</p>
                                                                    <form method="post" action="Cliente">
                                                                        <div id="ruc" class="form-group">
                                                                            <label>RUC:</label>
                                                                            <input id="ruc" class="input-control" name="ruc" type="text" minlength="11" maxlength="11" value="<%=empr.get(i).getRuc()%>" readonly>
                                                                        </div>
                                                                        <div id="rsocial" class="form-group">
                                                                            <label>Razón Social:</label>
                                                                            <input id="rsocial" class="form-control" name="rsocial" type="text" maxlength="30"  value="<%=empr.get(i).getRazonSocial()%>" required>
                                                                        </div>
                                                                        <div id="tempresa" class="form-group">
                                                                            <label>Tipo de Empresa:</label>
                                                                            <select id="tipo" name="tipo" class="form-control" required>
                                                                                <option value="" selected disabled>-- Seleccionar --</option>
                                                                                <option value="1">MicroEmpresa</option>
                                                                                <option value="2">Pequeña Empresa</option>
                                                                                <option value="3">Mediana Empresa</option>
                                                                                <option value="4">Gran Empresa</option>
                                                                            </select>
                                                                        </div>
                                                                        <div id="telefono" class="form-group">
                                                                            <label>Telefono Fijo:</label>
                                                                            <input id="telefono" class="input-control" name="telefono" type="text" minlength="7" maxlength="7" value="<%=empr.get(i).getTelefono()%>">
                                                                        </div>
                                                                        <div id="movil" class="form-group">
                                                                            <label>Movil:</label>
                                                                            <input id="movil" class="input-control" name="movil" type="text" minlength="9" maxlength="9" value="<%=empr.get(i).getMovil()%>">
                                                                        </div>
                                                                        <div id="email" class="form-group">
                                                                            <label>Email:</label>
                                                                            <input id="email" class="form-control" name="email" type="text" maxlength="50" value="<%=empr.get(i).getRazonSocial()%>" required>
                                                                        </div>
                                                                        <div id="cliente">
                                                                            <input id="cliente" class="form-control" name="cliente" value="empresa" style="visibility:hidden">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <center>
                                                                                <input id="submit_button" class="btn btn-default" type="submit" value="Aceptar" style="margin-right: 100px;"/>
                                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                                            </center>
                                                                        </div>

                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <center>
                                                        <div class="modal fade" id="myModalEliminar2<%=i + 1%>" role="dialog">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content" style="width: 402px;height: 202px;">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                        <h4 class="modal-title">Eliminar Cliente</h4>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <center>¿Desea eliminar el cliente con RUC: <%=empr.get(i).getRuc()%></center>
                                                                        <form method="post" action="Cliente" >
                                                                            <div id="ruc" class="form-group" style="visibility:hidden;margin-bottom: 0px;">
                                                                                <input id="ruc" class="input-control" name="ruc" type="text" value="<%=empr.get(i).getRuc()%>">>
                                                                            </div>
                                                                            <div id="cliente" style="visibility:hidden;height: 0px;">
                                                                                <input id="cliente" class="form-control" name="cliente" value="empresa">
                                                                            </div>
                                                                            <div id="" class="form-group" style="margin-bottom: 0px;">
                                                                                <center>
                                                                                    <input id="submit_button" class="btn btn-default" type="submit" name="funcion" value="Eliminar" style="margin-right: 100px;"/>
                                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                                                </center>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </center>
                                                    <%
                                                        }
                                                    %>
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <!--    Striped Rows Table  -->

                        <!--  End  Striped Rows Table  -->
                    </div>
                    <div class="col-lg-6">
                        <!--    Bordered Table  -->
                        <!--  End  Bordered Table  -->
                    </div>
                </div>

            </div>
        </div>

        <!-- Core Scripts - Include with every page -->
        <script src="assets/plugins/jquery-1.10.2.js"></script>
        <script src="assets/plugins/flot/jquery.flot.number.min.js"></script>
        <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
        <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
        <script src="assets/plugins/pace/pace.js"></script>
        <script src="assets/scripts/siminta.js"></script>
        <script src="assets/scripts/number.js"></script>
        <!-- Page-Level Plugin Scripts-->
        <script src="assets/plugins/dataTables/jquery.dataTables.js"></script>
        <script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables1-example').dataTable();
                $('#dataTables2-example').dataTable();
            });
        </script>

    </body>

</html>

