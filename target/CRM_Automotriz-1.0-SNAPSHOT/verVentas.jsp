<%-- 
    Document   : verClientes
    Created on : 03/05/2018, 01:01:27 AM
    Author     : Shuan
--%>

<%@page import="com.valenciav.crm.model.Venta"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre = (String) session.getAttribute("nombre");
    if (nombre == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
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
                        <li>
                            <a href="Cliente"><i class="fa fa-bar-chart-o fa-fw"></i> Clientes</a>
<!--                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="registrarCliente.jsp">Clientes</a>
                                </li>
                            </ul>-->
                        </li>
                        <li class="selected">
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
                        <h1 class="page-header">Ventas</h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <!--Pill Tabs   -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Resgistro de Ventas
                            </div>
                            <div class="panel-body">
                                <ul class="nav nav-pills">
                                    <li class="active"><a href="#persona-pills" data-toggle="tab">Persona Natural</a></li>
                                    <li><a href="#empresa-pills" data-toggle="tab">Empresa</a></li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="persona-pills">
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover" id="dataTables1-example">
                                                    <thead>
                                                        <tr>
                                                            <th>N°</th>
                                                            <th>N° Venta</th>
                                                            <th>Cliente</th>
                                                            <th>Vendedor</th>
                                                            <th>Fecha</th>
                                                            <th>Importe</th>
                                                            <th>Ganancia</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            List<Venta> pers = (List<Venta>) request.getSession().getAttribute("listaVentasPersonas");
                                                            for (int i = 0; i < pers.size(); i++) {
                                                        %>
                                                        <tr class="odd gradeX">
                                                            <td><%=i+1%></td>
                                                            <td><%=pers.get(i).getIdVenta()%></td>
                                                            <td><%=pers.get(i).getClientePersona()%></td>
                                                            <td><%=pers.get(i).getIdUsuario()%></td>
                                                            <td><%=pers.get(i).getFechaVenta()%></td>
                                                            <td class="center"><%=pers.get(i).getImporteTotal()%></td>
                                                            <td class="center"><%=pers.get(i).getGananciaTotal()%></td>
                                                        </tr>
                                                        <%
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="empresa-pills">
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover" id="dataTables2-example">
                                                    <thead>
                                                        <tr>
                                                            <th>N°</th>
                                                            <th>N° Venta</th>
                                                            <th>Cliente</th>
                                                            <th>Vendedor</th>
                                                            <th>Fecha</th>
                                                            <th>Importe</th>
                                                            <th>Ganancia</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            List<Venta> empr = (List<Venta>) request.getSession().getAttribute("listaVentasEmpresas");
                                                            for (int i = 0; i < empr.size(); i++) {
                                                        %>
                                                        <tr class="odd gradeX">
                                                            <td><%=i+1%></td>
                                                            <td><%=empr.get(i).getIdVenta()%></td>
                                                            <td><%=empr.get(i).getClienteEmpresa()%></td>
                                                            <td><%=empr.get(i).getIdUsuario()%></td>
                                                            <td><%=empr.get(i).getFechaVenta()%></td>
                                                            <td class="center"><%=empr.get(i).getImporteTotal()%></td>
                                                            <td class="center"><%=empr.get(i).getGananciaTotal()%></td>
                                                        </tr>
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
                        <!--End Pill Tabs   -->
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
        <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
        <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
        <script src="assets/plugins/pace/pace.js"></script>
        <script src="assets/scripts/siminta.js"></script>
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

