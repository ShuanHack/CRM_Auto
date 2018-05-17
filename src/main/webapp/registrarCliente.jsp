<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre = (String) session.getAttribute("nombre");
    if (nombre == null) {
        response.sendRedirect("login.jsp");
    }
%>
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
        <!--  wrapper -->
        <div id="wrapper">
            <!-- navbar top -->
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
                <!-- navbar-header -->
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
                <!-- end navbar-header -->
                <!-- navbar-top-links -->
                <ul class="nav navbar-top-links navbar-right">
                    <!-- main dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="top-label label label-danger">3</span><i class="fa fa-envelope fa-3x"></i>
                        </a>
                        <!-- dropdown-messages -->
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
                        <!-- end dropdown-messages -->
                    </li>

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="top-label label label-success">4</span>  <i class="fa fa-tasks fa-3x"></i>
                        </a>
                        <!-- dropdown tasks -->
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
                        <!-- end dropdown-tasks -->
                    </li>

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="top-label label label-warning">5</span>  <i class="fa fa-bell fa-3x"></i>
                        </a>
                        <!-- dropdown alerts-->
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
                        <!-- end dropdown-alerts -->
                    </li>

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-3x"></i>
                        </a>
                        <!-- dropdown user-->
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="LOGOUT"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                            </li>
                        </ul>
                        <!-- end dropdown-user -->
                    </li>
                    <!-- end main dropdown -->
                </ul>
                <!-- end navbar-top-links -->

            </nav>
            <!-- end navbar top -->

            <!-- navbar side -->
            <nav class="navbar-default navbar-static-side" role="navigation">
                <!-- sidebar-collapse -->
                <div class="sidebar-collapse">
                    <!-- side-menu -->
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
                        <li>
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
                        </li>-->
                    </ul>
                </div>
            </nav>
            <!-- end navbar side -->
            <!--  page-wrapper -->
            <div id="page-wrapper" >
                <div class="row">
                    <!-- page header-->
                    <div class="col-lg-12">
                        <h1 class="page-header">Registrar Cliente</h1>
                    </div>
                    <!-- end page header-->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default" style="width: 602px;">
                            <div class="panel-heading">
                                Resgistro de Clientes
                            </div>
                            <div class="panel-body">
                                <ul class="nav nav-pills">
                                    <li class="active"><a href="#persona-pills" data-toggle="tab">Persona Natural</a>
                                    </li>
                                    <li><a href="#empresa-pills" data-toggle="tab">Empresa</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="persona-pills">
                                        <div class="panel-body">
                                            <form method="post" action="Cliente">
                                                <div id="dni" class="form-group">
                                                    <label>DNI:</label>
                                                    <input id="dni" class="input-control" name="dni" type="text" minlength="8" maxlength="8" placeholder="DNI" required>
                                                </div>
                                                <div id="name" class="form-group">
                                                    <label>Nombres:</label>
                                                    <input id="name" class="form-control" name="name" type="text" maxlength="30" placeholder="Nombres" required>
                                                </div>
                                                <div id="apaterno" class="form-group">
                                                    <label>Apellido Paterno:</label>
                                                    <input id="apaterno" class="form-control" name="apaterno" type="text" maxlength="30" placeholder="Apellido Paterno" required>
                                                </div>
                                                <div id="amaterno" class="form-group">
                                                    <label>Apellido Materno:</label>
                                                    <input id="amaterno" class="form-control" name="amaterno" type="text" maxlength="30"  placeholder="Apellido Materno" required>
                                                </div>
                                                <div id="telefono" class="form-group">
                                                    <label>Telefono Fijo:</label>
                                                    <input id="telefono" class="input-control" name="telefono" type="text" minlength="7" maxlength="7"  placeholder="Telefono Fijo">
                                                </div>
                                                <div id="movil" class="form-group">
                                                    <label>Movil:</label>
                                                    <input id="movil" class="input-control" name="movil" type="text" minlength="9" maxlength="9"  placeholder="Movil">
                                                </div>
                                                <div id="email" class="form-group">
                                                    <label>Email:</label>
                                                    <input id="email" class="form-control" name="email" type="text" maxlength="50" placeholder="Email" required>
                                                </div>
                                                <div id="cliente">
                                                    <input id="cliente" class="form-control" name="cliente" value="persona" style="visibility:hidden">
                                                </div>
                                                <center>
                                                <div class="gorm-group">
                                                    <input id="submit_button" type="submit" value="Registrar" />
                                                </div>
                                                </center>    
                                            </form>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="empresa-pills">
                                        <div class="panel-body">
                                            <form method="post" action="Cliente">
                                                <div id="ruc" class="form-group">
                                                    <label>RUC:</label>
                                                    <input id="ruc" class="input-control" name="ruc" type="text" minlength="11" maxlength="11" placeholder="RUC" required>
                                                </div>
                                                <div id="rsocial" class="form-group">
                                                    <label>Razón Social:</label>
                                                    <input id="rsocial" class="form-control" name="rsocial" type="text" maxlength="30"  placeholder="Razón Social" required>
                                                </div>
                                                <div id="tempresa" class="form-group">
                                                    <label>Tipo de Empresa:</label>
                                                    <!--<input id="tempresa" class="form-control" name="tempresa" type="text" size="30"  placeholder="Tipo de Empresa" required>-->
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
                                                    <input id="telefono" class="input-control" name="telefono" type="text" minlength="7" maxlength="7"  placeholder="Telefono Fijo">
                                                </div>
                                                <div id="movil" class="form-group">
                                                    <label>Movil:</label>
                                                    <input id="movil" class="input-control" name="movil" type="text" minlength="9" maxlength="9"  placeholder="Movil">
                                                </div>
                                                <div id="email" class="form-group">
                                                    <label>Email:</label>
                                                    <input id="email" class="form-control" name="email" type="text" maxlength="50" placeholder="Email" required>
                                                </div>
                                                <div id="cliente">
                                                    <input id="cliente" class="form-control" name="cliente" value="empresa" style="visibility:hidden">
                                                </div>
                                                <center>
                                                <div class="gorm-group">
                                                    <input id="submit_button" type="submit" value="Registrar" />
                                                </div>
                                                </center>
                                            </form>

                                        </div>
                                    </div>

                                    <!--
                                    <div class="tab-pane fade" id="messages-pills">
                                            <h4>Messages Tab</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                    </div>
                                    <div class="tab-pane fade" id="settings-pills">
                                            <h4>Settings Tab</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                    </div>
                                    -->
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end page-wrapper -->

        </div>
        <!-- end wrapper -->

        <!-- Core Scripts - Include with every page -->
        <script src="assets/plugins/jquery-1.10.2.js"></script>
        <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
        <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
        <script src="assets/plugins/pace/pace.js"></script>
        <script src="assets/scripts/siminta.js"></script>
        <!-- Page-Level Plugin Scripts-->
        <script src="assets/plugins/flot/jquery.flot.js"></script>
        <script src="assets/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="assets/plugins/flot/jquery.flot.number.min.js"></script>
        <script src="assets/plugins/flot/jquery.flot.resize.js"></script>
        <script src="assets/plugins/flot/jquery.flot.pie.js"></script>
        <script src="assets/scripts/flot-demo.js"></script>
        <script src="assets/scripts/number.js"></script>
        <!--<script src="assets/scripts/utilitarios.js"></script>-->

    </body>

</html>
