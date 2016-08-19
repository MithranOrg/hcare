<%-- 
    Document   : searchProfile
    Created on : 17 Aug, 2016, 12:25:58 AM
    Author     : Madhankumar
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.thamiyan.constants.Constants"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Upload Proof</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" type="text/css" href="../resources/bootstrap-3.3.6-dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../resources/AdminLTE-2.3.5/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../resources/AdminLTE-2.3.5/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="../resources/assets/css/main.css">
        <link rel="stylesheet" href="../resources/assets/css/afterlogin.css">
        <link rel="stylesheet" href="../resources/AdminLTE-2.3.5/plugins/select2/select2.min.css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link rel="stylesheet" href="../resources/AdminLTE-2.3.5/plugins/iCheck/all.css">
        <link rel="stylesheet" href="../resources/assets/css/search.css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="#" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini">T</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><%= Constants.COMPANY_NAME%></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../resources/assets/img/unknown_user.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs">${username}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../resources/assets/img/unknown_user.png" class="img-circle" alt="User Image">

                                        <p>
                                            ${username} - Web Developer
                                            <small>Member since Nov. 2012</small>
                                        </p>
                                    </li>
                                    <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                        </li>

                        </ul>
                    </div>
                </nav>
            </header>

            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="../resources/assets/img/unknown_user.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>${username}</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>

                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li>
                            <a href="#">
                                <i class="fa fa-calendar"></i>
                                <span>Appointments</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-users"></i> <span>Patients</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pie-chart"></i> 
                                <span>Reports</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-comment"></i>
                                <span>Communications</span>
                            </a>
                        </li>
                        <li class="header"></li>

                        <li>
                            <a href="doctorProfile.jsp">
                                <i class="fa fa-user"></i> <span>Profile</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-commenting"></i> <span>Feedbacks</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-mobile"></i> <span>Reach</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-comments"></i> <span>Consult</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-envelope"></i> <span>Health Feed</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-cog"></i>
                                <span>Settings</span>
                            </a>
                        </li>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->

            <div class="content-wrapper">

                <div class="container">
                    <h1 class="box-title">Search for Doctor</h1>
                </div>
                <div class="container searchpage">
                    <form action="doctorSearchList.jsp">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-8">
                                <span class="twitter-typeahead" style="position: relative; display: block; direction: ltr;">
                                    <input class="typeahead form-control tt-hint" type="text" id="countryname" disabled="" autocomplete="off" spellcheck="false" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; background: none 0% 0% / auto repeat scroll padding-box border-box rgb(255, 255, 255);">
                                    <input class="typeahead form-control tt-input" placeholder="Country Name" type="text" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;">
                                    <pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family:Open Sans, Tahoma, Arial, helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre>
                                    <span class="tt-dropdown-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none; right: auto;">
                                        <div class="tt-dataset-0"></div>
                                    </span>
                                </span>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-8">
                                <span class="twitter-typeahead" style="position: relative; display: block; direction: ltr;">
                                    <input class="typeahead form-control tt-hint" type="text" id="areaname" disabled="" autocomplete="off" spellcheck="false" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; background: none 0% 0% / auto repeat scroll padding-box border-box rgb(255, 255, 255);">
                                    <input class="typeahead form-control tt-input" placeholder="Area Name" type="text" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;">
                                    <pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family:Open Sans, Tahoma, Arial, helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre>
                                    <span class="tt-dropdown-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none; right: auto;">
                                        <div class="tt-dataset-0"></div>
                                    </span>
                                </span>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-8">
                                <span class="twitter-typeahead" style="position: relative; display: block; direction: ltr;">
                                    <input class="typeahead form-control tt-hint" type="text" id="specialityname" disabled="" autocomplete="off" spellcheck="false" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; background: none 0% 0% / auto repeat scroll padding-box border-box rgb(255, 255, 255);">
                                    <input class="typeahead form-control tt-input" placeholder="Speciality" type="text" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;">
                                    <pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family:Open Sans, Tahoma, Arial, helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre>
                                    <span class="tt-dropdown-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none; right: auto;">
                                        <div class="tt-dataset-0"></div>
                                    </span>
                                </span>
                            </div>
                            <div class="col-md-2 col-lg-1 col-sm-2">
                                <input class="btn btn-primary mt10" type="submit" value="Search">
                            </div>
                        </div>
                    </form>
                </div>


            </div>

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.0
                </div>
                <strong>Copyright &copy; 2016-2018 <a href="#">Thamiyan</a>.</strong> All rights
                reserved.
            </footer>

        </div>
        <!-- ./wrapper -->

        <script type="text/javascript" src="../resources/JQuery/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="../resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="../resources/AdminLTE-2.3.5/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../resources/AdminLTE-2.3.5/plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../resources/AdminLTE-2.3.5/dist/js/app.min.js"></script>
        <script src="../resources/assets/js/profile.js"></script>
        <script type="text/javascript" src="../resources/jQuery-Form-Validator-master/form-validator/jquery.form-validator.min.js"></script>
        <script type="text/javascript" src="../resources/plugins/Clone-section-of-form-using-jQuery-master/js/clone-form-td-multiple.js"></script>
        <!-- Select2 -->
        <script src="../resources/AdminLTE-2.3.5/plugins/select2/select2.full.min.js"></script>
        <script src="../resources/plugins/alert/alert.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="../resources/AdminLTE-2.3.5/plugins/iCheck/icheck.min.js"></script>

    </body>
</html>

