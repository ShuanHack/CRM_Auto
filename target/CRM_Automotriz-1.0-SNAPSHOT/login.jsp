<%-- 
    Document   : login
    Created on : 01/05/2018, 07:53:35 PM
    Author     : Shuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    </head>
    
    <body onload="noback();" class="body-Login-back">
        <script>
            function noback() {
                window.location.hash = "";
                window.location.hash = "Again-No-back-button";
                window.onhashchange = function () {
                    window.location.hash = "";
                };
            }
        </script>

        <div class="container">

            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
                    <img src="assets/img/logo.png" alt=""/>
                </div>
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">                  
                        <div class="panel-heading">
                            <h3 class="panel-title">Iniciar Sesión</h3>
                        </div>
                        <div class="panel-body">
                            <form method="post" action="LOGIN">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Usuario" name="usuario">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Recordarme
                                        </label>
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <!--<a href="index.html" class="btn btn-lg btn-success btn-block">Iniciar</a>-->
                                    <input class="btn btn-lg btn-success btn-block" id="submit_button" type="submit" value="Iniciar" />
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Core Scripts - Include with every page -->
        <script src="assets/plugins/jquery-1.10.2.js"></script>
        <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
        <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>

    </body>
</html>
