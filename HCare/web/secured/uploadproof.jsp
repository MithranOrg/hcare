<%-- 
    Document   : editProfile
    Created on : 14 Jul, 2016, 10:39:51 PM
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

        <!-- Fine Uploader New/Modern CSS file
       ====================================================================== -->
        <link href="../resources/plugins/fine-uploader/fine-uploader-new.css" rel="stylesheet">

        <style>
            #trigger-upload {
                color: white;
                background-color: #00ABC7;
                font-size: 14px;
                padding: 7px 20px;
                background-image: none;
            }

            #fine-uploader-manual-trigger .qq-upload-button {
                margin-right: 15px;
            }

            #fine-uploader-manual-trigger .buttons {
                width: 36%;
            }

            #fine-uploader-manual-trigger .qq-uploader .qq-total-progress-bar-container {
                width: 60%;
            }
        </style>

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
                <section class="content-header">

                    <ol class="breadcrumb">
                        <li><a href="doctorProfile.jsp"><i class="fa fa-dashboard"></i>Profile</a></li>
                        <li class="active">Upload Proof</li>
                    </ol>
                </section>

                <section class="content profile-content">

                    <div class="row">
                        <div class="col-md-6 col-lg-12">
                            <!-- Custom Tabs -->
                            <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab_1" data-toggle="tab">Proof Submission</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_1">

                                        <div class="box">

                                            <div class="box-body no-padding">
                                                <h4>Add ID Proof,Qualification Proof, Registration Proof </h4>
                                                <!-- Fine Uploader DOM Element
    ====================================================================== -->
                                                <div id="fine-uploader-manual-trigger"></div>





                                            </div><!-- /.box-body -->
                                        </div><!-- /.box -->

                                    </div><!-- /.tab-pane -->

                                </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
                        </div><!-- /.col -->




                </section>
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

        <!-- Fine Uploader jQuery JS file
====================================================================== -->
        <script src="../resources/plugins/fine-uploader/fine-uploader.jquery.js"></script>

        <script type="text/template" id="qq-template-manual-trigger">
            <div class="qq-uploader-selector qq-uploader" qq-drop-area-text="Drop files here">
            <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
            <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
            </div>
            <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
            <span class="qq-upload-drop-area-text-selector"></span>
            </div>
            <div class="button">
            <div class="qq-upload-button-selector qq-upload-button">
            <div>Select files</div>
            </div>
            <button type="button" id="trigger-upload" class="btn btn-primary">
            <i class="icon-upload icon-white"></i> Upload
            </button>
            </div>
            <span class="qq-drop-processing-selector qq-drop-processing">
            <span>Processing dropped files...</span>
            <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
            </span>
            <ul class="qq-upload-list-selector qq-upload-list" aria-live="polite" aria-relevant="additions removals">
            <li>
            <div class="qq-progress-bar-container-selector">
            <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-progress-bar-selector qq-progress-bar"></div>
            </div>
            <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
            
            <span class="qq-upload-file-selector qq-upload-file"></span>
            <span class="qq-edit-filename-icon-selector qq-edit-filename-icon" aria-label="Edit filename"></span>
            <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
            <span class="qq-upload-size-selector qq-upload-size"></span>
            <button type="button" class="qq-btn qq-upload-cancel-selector qq-upload-cancel">Cancel</button>
            <button type="button" class="qq-btn qq-upload-retry-selector qq-upload-retry">Retry</button>
            <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">Delete</button>
            <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
            </li>
            </ul>

            <dialog class="qq-alert-dialog-selector">
            <div class="qq-dialog-message-selector"></div>
            <div class="qq-dialog-buttons">
            <button type="button" class="qq-cancel-button-selector">Close</button>
            </div>
            </dialog>

            <dialog class="qq-confirm-dialog-selector">
            <div class="qq-dialog-message-selector"></div>
            <div class="qq-dialog-buttons">
            <button type="button" class="qq-cancel-button-selector">No</button>
            <button type="button" class="qq-ok-button-selector">Yes</button>
            </div>
            </dialog>

            <dialog class="qq-prompt-dialog-selector">
            <div class="qq-dialog-message-selector"></div>
            <input type="text">
            <div class="qq-dialog-buttons">
            <button type="button" class="qq-cancel-button-selector">Cancel</button>
            <button type="button" class="qq-ok-button-selector">Ok</button>
            </div>
            </dialog>
            </div>
        </script>

        <!-- Your code to create an instance of Fine Uploader and bind to the DOM/template
                                                       ====================================================================== -->
        <script>
$('#fine-uploader-manual-trigger').fineUploader({
    template: 'qq-template-manual-trigger',
    request: {
        endpoint: '/server/uploads'
    },
    thumbnails: {
        placeholders: {
            waitingPath: '../resources/plugins/fine-uploader/placeholders/waiting-generic.png',
            notAvailablePath: '../resources/plugins/fine-uploader/placeholders/not_available-generic.png'
        }
    },
    autoUpload: false,
    validation: {
        allowedExtensions: ['jpeg', 'jpg','pdf','doc'],
        itemLimit: 13,
        sizeLimit: 51200 // 50 kB = 50 * 1024 bytes
    }
});

$('#trigger-upload').click(function () {
    $('#fine-uploader-manual-trigger').fineUploader('uploadStoredFiles');
});
        </script>


    </body>
</html>
