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
        <title>Edit Clinic Profile</title>
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
                        <li class="active">Clinic Profile</li>
                    </ol>
                </section>

                <section class="content profile-content">
                    <!-- Profile-->
                    <div class="row clinicprofilemain">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Profile</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group">
                                                    <div class="row">
                                                        <div class="box1 col-md-5 col-lg-2 alpha topmargin_10">
                                                            <img  src="../resources/assets/img/unknown_user.png" class="profile-thumbnail" alt="User Image">
                                                        </div>

                                                        <div class="col-md-5 col-lg-5">
                                                            <p class="profilename topmargin_10 box1">${clinicprofilename}</p>  
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofilemain" role="form"  action="#" id = "clinicprofilemain" enctype="multipart/form-data" method="post" >
                                                <div class="control-group  col-lg-12 col-md-12">
                                                    <div class="edit-div col-lg-12 col-md-12 profilemaindiv" >

                                                        <div class="row" >
                                                            <label for="name" class="col-md-4 col-lg-2 ">
                                                                <p class="edit-label">Name<i class="icon-star"></i></p>
                                                            </label> 
                                                            <div class="col-md-4 col-lg-4 form-group">
                                                                <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                       name="clinicprofilename" value="${clinicprofilename}"/>
                                                            </div>
                                                        </div>

                                                        <div id="fine-uploader-manual-trigger"></div>


                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>

                    <!--About-->

                    <div class="row clinicprofileabout">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">About</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group">

                                                    <div class="col-md-9 col-lg-9">
                                                        <p class="profilename topmargin_10 box1">${clinicprofileabout}</p>  
                                                    </div>

                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofileabout" role="form"  action="#" id = "clinicprofileabout" enctype="multipart/form-data" method="post" >
                                                <div class="control-group  col-lg-12 col-md-12">
                                                    <div class="edit-div col-lg-12 col-md-12 profilemaindiv" >

                                                        <div class="row" >
                                                            <label for="name" class="col-md-2 col-lg-1 ">
                                                                <p class="edit-label">About<i class="icon-star"></i></p>
                                                            </label> 
                                                            <div class="col-md-8 col-lg-8 form-group">
                                                                <textarea draggable="false" rows="3" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                          name="clinicprofileabout" value="${clinicprofileabout}"></textarea>
                                                            </div>
                                                        </div>


                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">

                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>
                    <!-- Contacts-->
                    <div class="row topmargin_5 clinicprofilecontact">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Contact</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-12 box1 text-info">
                                                <div class="control-group">

                                                    <div class="topmargin_10  box1 col-md-6 col-lg-6 profile_p">
                                                        <p class="box1 profile_p">Primary Contact Number
                                                            <i class="icon-star"></i>
                                                            <br>${clinicprimarycontact}
                                                        </p>
                                                    </div>
                                                    <div class="topmargin_10  box1 col-md-6 col-lg-6 profile_p">
                                                        <p class="box1 profile_p ">Primary Email Address 
                                                            <i class="icon-star"></i>
                                                            <br>${clinicprimaryemailid}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 col-lg-12 box1 text-info">
                                                <div class="control-group">
                                                    <div class=" box1 col-md-6 col-lg-6 profile_p">
                                                        <p class="box1 profile_p">Additional Mobile Numbers
                                                            <i class="icon-star"></i>

                                                            <c:forEach items="${clinicadditionalcontacts}" var="additionalcontact" >
                                                                <c:out value="${clinicadditionalcontact}"/><br>
                                                            </c:forEach>

                                                        </p>
                                                    </div>
                                                    <div class=" box1 col-md-6 col-lg-6 profile_p">
                                                        <p class="box1 profile_p">Additional Email Address
                                                            <i class="icon-star"></i>

                                                            <c:forEach items="${clinicadditionalemails}" var="additionalemail" >
                                                                <c:out value="${clinicadditionalemail}"/><br>
                                                            </c:forEach>

                                                        </p>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofilecontact" role="form"  action="#" id = "clinicprofilecontact" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <div   class="col-lg-6">
                                                            <div class="row">
                                                                <div>
                                                                    <label for="pcontact" class="col-md-4 col-lg-6 ">
                                                                        <p class="edit-label">Primary Mobile<i class="icon-star"></i></p>
                                                                    </label>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div class="col-md-9 col-lg-9">
                                                                    <input type="text" class="edit-input form-control " data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           name="clinicpcontact" value="${clinicprimarycontact}"/>
                                                                </div>
                                                            </div> 

                                                            <div class="row">
                                                                <div>
                                                                    <label for="acontact" class="col-md-4 col-lg-6 ">
                                                                        <p class="edit-label">Additional Mobile<i class="icon-star"></i></p>
                                                                    </label>
                                                                </div>
                                                            </div> 
                                                            <c:if test="${clinicadditionalcontacts != null}" >
                                                                <div class="row">

                                                                    <c:forEach items="${clinicadditionalcontacts}" var="additionalcontact" >    
                                                                        <div class="col-md-9 col-lg-9 ">
                                                                            <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                                   name="clinicadditionalcontact" value=${clinicadditionalcontact}  />
                                                                        </div>
                                                                    </c:forEach>


                                                                </div>
                                                            </c:if>
                                                            <div  id="addcontactentry1" class="row clonestyle clonedInput_2">
                                                                <div class="col-md-9 col-lg-9 ">
                                                                    <input type="text" class="edit-input form-control input-additionalcontact" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           name="clinicnewadditionalcontact" />
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-2 col-lg-8">     
                                                                <span>

                                                                    <button type="button" id="btnAdd_2" name="btnAdd" class="btn" data-position="top-left" >
                                                                        <span class="glyphicon glyphicon-plus"></span>
                                                                    </button>
                                                                    <button type="button" id="btnDel_2" name="btnDel" class="btn">
                                                                        <span class="glyphicon glyphicon-minus"></span>
                                                                    </button>
                                                                    <br/>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div  class="col-lg-6">
                                                            <div class="row">
                                                                <div>
                                                                    <label for="pemail" class="col-md-4 col-lg-6 ">
                                                                        <p class="edit-label">Primary Email<i class="icon-star"></i></p>
                                                                    </label>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div class="col-md-9 col-lg-9 ">
                                                                    <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           name="clinicprimaryemail" value="${clinicprimaryemail}"/>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div>
                                                                    <label for="aemail" class="col-md-4 col-lg-6 ">
                                                                        <p class="edit-label">Additional Email<i class="icon-star"></i></p>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <c:if test="${clinicadditionalemails != null}" >
                                                                <div class="row">
                                                                    <c:forEach items="${clinicadditionalemails}" var="additionalemail" >    
                                                                        <div class="col-md-9 col-lg-9 ">
                                                                            <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                                   name="clinicadditionalemail" value=${clinicadditionalemail}  />
                                                                        </div>
                                                                    </c:forEach>

                                                                </div>
                                                            </c:if>
                                                            <div class="row clonestyle clonedInput_3" id="addemailentry1" >
                                                                <div class="col-md-9 col-lg-9">
                                                                    <input type="text" class="edit-input form-control input-additionalemail" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           name="clinicnewadditionalemail" />
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-2 col-lg-8">     
                                                                <span>
                                                                    <button type="button" id="btnAdd_3" name="btnAdd" class="btn" data-position="top-left" >
                                                                        <span class="glyphicon glyphicon-plus"></span>
                                                                    </button>
                                                                    <button type="button" id="btnDel_3" name="btnDel" class="btn">
                                                                        <span class="glyphicon glyphicon-minus"></span>
                                                                    </button>
                                                                    <br/>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="row"></div>
                                                        <div class="row"></div>
                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>

                    <!--City- Need modification-->
                    <div class="row topmargin_5 clinicprofilelocation">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Location</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group ">
                                                    <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                        <p class="box1 profile_p">City 
                                                            <i class="icon-star"></i>
                                                            : ${city}
                                                        </p>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profilecity" role="form"  action="#" id = "profilecity" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >


                                                        <div class="row">

                                                            <div  class="col-md-6 col-lg-5 form-group">
                                                                <select name="country" class="form-control select2" style="width: 100%;"
                                                                        data-validation="required" 
                                                                        data-validation-error-msg="This value should not be blank">
                                                                    <c:if test="${country!= null}" >
                                                                        <option selected="selected" value="">${country}</option>
                                                                    </c:if>
                                                                    <c:if test="${country== null}" >
                                                                        <option selected="selected" value="">country</option>
                                                                    </c:if>
                                                                    <c:forEach items="${countrylist}" var="city" >
                                                                        <c:out value="${country}"/>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div  class="col-md-6 col-lg-5 form-group">
                                                                <select name="city" class="form-control select2" style="width: 100%;"
                                                                        data-validation="required" 
                                                                        data-validation-error-msg="This value should not be blank">
                                                                    <c:if test="${city!= null}" >
                                                                        <option selected="selected" value="">${city}</option>
                                                                    </c:if>
                                                                    <c:if test="${city == null}" >
                                                                        <option selected="selected" value="">City</option>
                                                                    </c:if>
                                                                    <c:forEach items="${citylist}" var="city" >
                                                                        <c:out value="${city}"/>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div  class="col-md-6 col-lg-5 form-group">
                                                                <select name="area" class="form-control select2" style="width: 100%;"
                                                                        data-validation="required" 
                                                                        data-validation-error-msg="This value should not be blank">
                                                                    <c:if test="${area!= null}" >
                                                                        <option selected="selected" value="">${area}</option>
                                                                    </c:if>
                                                                    <c:if test="${area == null}" >
                                                                        <option selected="selected" value="">Area</option>
                                                                    </c:if>
                                                                    <c:forEach items="${arealist}" var="area" >
                                                                        <c:out value="${area}"/>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div  class="col-md-6 col-lg-5 form-group">

                                                                <input type="text" class="edit-input form-control " data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                       placeholder="Zip"   name="pzip" value="${zip}"/>
                                                            </div>

                                                        </div>
                                                        <div class="row">
                                                            <div  class="col-md-6 col-lg-5 form-group">
                                                                <input type="text" class="edit-input form-control " data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                       placeholder="Address"   name="paddress" value="${address}"/>
                                                            </div>

                                                            <div  class="col-md-6 col-lg-5 form-group">
                                                                <input type="text" class="edit-input form-control " data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                       placeholder="Landmarks"   name="landmarks" value="${landmarks}"/>
                                                            </div>
                                                        </div>


                                                        <div class="row"></div>
                                                        <div class="row"></div>
                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>

                    <!--Practices-->
                    <div class="row topmargin_5 clinicprofilepractice">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Practices</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group ">
                                                    <c:if test="${selectedclinicpracticelist != null}" >
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                <p class="box1 profile_p">Consultation 
                                                                    <i class="icon-star"></i><br>
                                                                    ${selectedclinicpracticelist.fees}

                                                                </p>
                                                            </div><br><br>
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-4 profile_p" >
                                                                <input type="checkbox" style="float:left;margin-top:30px;" class="form-control" name="clinicfreeconsult" checked=${selectedclinicpracticelist.freeconsult}/>
                                                                <p class="profile_p" style="display:inline;">Free Consultation
                                                                </p>
                                                                ${selectedclinicpracticelist.freeconsult}
                                                            </div>
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-8 profile_p" >
                                                                <input type="checkbox" style="float:left;margin-top:30px;" class="form-control" name="clinicfreeconsult" checked=${selectedclinicpracticelist.freeconsult}/>
                                                                <p class="profile_p" style="display:inline;">Timings
                                                                </p>
                                                                ${selectedclinicpracticelist.timings}
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                <p class="box1 profile_p">Appointment Duration
                                                                    <i class="icon-star"></i><br>
                                                                    <select name="duration" class="form-control select2 " style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value=${selectedclinicpracticelist.duration}>${selectedclinicpracticelist.duration}</option>
                                                                        <c:forEach items="${durationlist}" var="duration" >
                                                                            <c:out value="${duration}"/>
                                                                        </c:forEach>
                                                                    </select>

                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                <p class="box1 profile_p">Timings</p><br>
                                                            </div>
                                                        </div>


                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofilepractice" role="form"  action="#" id = "clinicprofilepractice" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >
                                                        <div id="practiceentry1" class="col-lg-12">

                                                            <div class="row">
                                                                <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                    <b><p class="box1 profile_p">Consultation </p></b>
                                                                    <i class="icon-star"></i><br>
                                                                    <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           placeholder="Fees"  name="clinicfees" />

                                                                </div><br>
                                                                <div class="topmargin_10  box1 col-md-2 col-lg-4 profile_p">

                                                                    <input type="checkbox"  name="clinicfreeconsult" style="display:left;" />
                                                                    <p class="profile_p" style="display:inline;">Free Consultation</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                <b><p class="box1 profile_p">Appointment Duration</b>
                                                                <i class="icon-star"></i><br>
                                                                <select name="clinicduration" class="form-control select2  topmargin_10" style="width: 100%;"
                                                                        data-validation="required" 
                                                                        data-validation-error-msg="This value should not be blank">
                                                                    <option selected="selected" ></option>
                                                                    <c:forEach items="${durationlist}" var="duration" >
                                                                        <c:out value="${duration}"/>
                                                                    </c:forEach>
                                                                </select>

                                                                </p>
                                                            </div>
                                                        </div>

                                                        <div class="row">

                                                            <div class="col-md-6 col-lg-12">
                                                                <div class="box">
                                                                    <div class="box-header">
                                                                        <h3 class="box-title">Timings</h3>
                                                                    </div>
                                                                    <!-- /.box-header -->
                                                                    <div class="box-body no-padding">
                                                                        <table class="table table-condensed">
                                                                            <tr>
                                                                                <th class="col-lg-3">Doctor Visit Practice</th>
                                                                                <th class="col-lg-4">Session1</th>
                                                                                <th class="col-lg-4">Session2 </th>
                                                                            </tr>
                                                                            <c:if test="${clinicpracticetimings}!= null" >
                                                                                <c:forEach items="${clinicpracticetimings}" var="practicetime" >    
                                                                                    <tr>

                                                                                        <td class="box1">
                                                                                            <input type="checkbox" class="box1" name="clinicpracticeday" checked=${clinicpracticetimings.monday.status}/>
                                                                                            <b> <p class="box1"> ${clinicpracticetime.day} </p></b>
                                                                                        </td>
                                                                                        <td>
                                                                                            <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                    size="1" name = "clinicpracticefromhours">
                                                                                                <option value=${clinicpracticetime.fromhours}>${clinicpracticetime.fromhours} </option>
                                                                                                <% for (int i = 1; i <= 12; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                    size="1" name = "clinicpracticefrommin">
                                                                                                <option value=${clinicpracticetime.fromminutes}> ${clinicpracticetime.fromminutes}</option>
                                                                                                <% for (int i = 1; i <= 60; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                    size="1" name = "clinicpracticefromdaytime">
                                                                                                <option value=${clinicpracticetime.fromdaytime}> ${clinicpracticetime.fromdaytime}</option>
                                                                                                <option value="AM">AM</option>
                                                                                                <option value="PM">PM</option>
                                                                                            </select> 
                                                                                            <p style="display: inline;float: left;margin-top: 15px;margin-left: 5px;margin-right: 5px;"> -- </p>
                                                                                            <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                    size="1" name = "clinicpracticetohours">
                                                                                                <option value=${clinicpracticetime.tohours}>${clinicpracticetime.tohours} </option>
                                                                                                <% for (int i = 1; i <= 12; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                    size="1" name = "clinicpracticetomin">
                                                                                                <option value=${clinicpracticetime.tominutes}> ${clinicpracticetime.tominutes}</option>
                                                                                                <% for (int i = 1; i <= 60; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                    size="1" name = "clinicpracticetodaytime">
                                                                                                <option value=${clinicpracticetime.todaytime}> ${clinicpracticetime.todaytime}</option>
                                                                                                <option value="AM">AM</option>
                                                                                                <option value="PM">PM</option>
                                                                                            </select> 
                                                                                        </td>

                                                                                    </tr>

                                                                                </c:forEach>
                                                                            </c:if> 
                                                                            <c:if test="${clinicpracticetimings== null}" >
                                                                                <% String[] daylist = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}; %>


                                                                                <% for (int day = 0; day < daylist.length; day++) { %>

                                                                                <tr>

                                                                                    <td class="box1">
                                                                                        <input type="checkbox" class="box1" name="clinicpracticeday" checked=${clinicpracticetimings.monday.status}/>
                                                                                        <b> <p class="box1"> <% out.println(daylist[day]);%> </p></b>
                                                                                    </td>
                                                                                    <td>
                                                                                        <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                size="1" name = "clinicpracticefromhours">
                                                                                            <option> </option>
                                                                                            <% for (int i = 1; i <= 12; i++) {%>
                                                                                            <option value="<%= i%>"><% out.print(i); %></option>
                                                                                            <% }%>
                                                                                        </select> 
                                                                                        <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                size="1" name = "clinicpracticefrommin">
                                                                                            <option> </option>
                                                                                            <% for (int i = 1; i <= 60; i++) {%>
                                                                                            <option value="<%= i%>"><% out.print(i); %></option>
                                                                                            <% }%>
                                                                                        </select> 
                                                                                        <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                size="1" name = "clinicpracticefromdaytime">
                                                                                            <option></option>
                                                                                            <option value="AM">AM</option>
                                                                                            <option value="PM">PM</option>
                                                                                        </select> 
                                                                                        <p style="display: inline;float: left;margin-top: 15px;margin-left: 5px;margin-right: 5px;"> -- </p>
                                                                                        <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                size="1" name = "clinicpracticetohours">
                                                                                            <option > </option>
                                                                                            <% for (int i = 1; i <= 12; i++) {%>
                                                                                            <option value="<%= i%>"><% out.print(i); %></option>
                                                                                            <% }%>
                                                                                        </select> 
                                                                                        <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                size="1" name = "clinicpracticetomin">
                                                                                            <option></option>
                                                                                            <% for (int i = 1; i <= 60; i++) {%>
                                                                                            <option value="<%= i%>"><% out.print(i); %></option>
                                                                                            <% }%>
                                                                                        </select> 
                                                                                        <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                size="1" name = "clinicpracticetodaytime">
                                                                                            <option></option>
                                                                                            <option value="AM">AM</option>
                                                                                            <option value="PM">PM</option>
                                                                                        </select> 
                                                                                    </td>

                                                                                </tr>

                                                                                <%}%>
                                                                            </c:if> 
                                                                        </table>
                                                                    </div>

                                                                </div>
                                                                <!-- /.box -->


                                                            </div>


                                                            <div class="row"></div>
                                                            <div class="row"></div>
                                                            <div class="row">
                                                                <div class="profilesubmit">
                                                                    <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                    <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                                </div>
                                                            </div>
                                                        </div> 
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>

                    <!--Website-->

                    <div class="row clinicprofilewebsite">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Website</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group">

                                                    <div class="col-md-9 col-lg-9">
                                                        <p class="profilename topmargin_10 box1">${clinicprofilewebsite}</p>  
                                                    </div>

                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofilewebsite" role="form"  action="#" id = "clinicprofilewebsite" enctype="multipart/form-data" method="post" >
                                                <div class="control-group  col-lg-12 col-md-12">
                                                    <div class="edit-div col-lg-12 col-md-12 profilemaindiv" >

                                                        <div class="row" >
                                                            <label for="name" class="col-md-2 col-lg-1 ">
                                                                <p class="edit-label">Website<i class="icon-star"></i></p>
                                                            </label> 
                                                            <div class="col-md-4 col-lg-4 form-group">
                                                                <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                       name="clinicprofilewebsite" value="${clinicprofilewebsite}"/>
                                                            </div>
                                                        </div>


                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>

                    <!--Tag-->

                    <div class="row clinicprofiletag">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Tagline</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group">

                                                    <div class="col-md-9 col-lg-9">
                                                        <p class="profilename topmargin_10 box1">${clinicprofiletag}</p>  
                                                    </div>

                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofiletag" role="form"  action="#" id = "clinicprofiletag" enctype="multipart/form-data" method="post" >
                                                <div class="control-group  col-lg-12 col-md-12">
                                                    <div class="edit-div col-lg-12 col-md-12 profilemaindiv" >

                                                        <div class="row" >
                                                            <label for="name" class="col-md-2 col-lg-1 ">
                                                                <p class="edit-label">Tagline<i class="icon-star"></i></p>
                                                            </label> 
                                                            <div class="col-md-4 col-lg-4 form-group">
                                                                <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                       name="clinicprofiletag" value="${clinicprofiletag}"/>
                                                            </div>
                                                        </div>


                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>

                    <!--Awards-->

                    <div class="row topmargin_5 clinicprofileaward">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Awards & Recognition</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group ">

                                                    <c:if test="${clinicawarddtl == null}" >
                                                        <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                            <p class="box1 profile_p">You are yet to add a Award details to this profile. 

                                                            </p>
                                                        </div>
                                                    </c:if>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofileaward" role="form"  action="#" id = "clinicprofileaward" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <c:if test="${selectedclinicprofileawardlist != null}" >
                                                            <div class="row">
                                                                <c:forEach items="${selectedclinicprofileawardlist}" var="profileaward" >    
                                                                    <div  class="col-md-6 col-lg-5 form-group">
                                                                        <input type="text" class="edit-input form-control input-award" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                               placeholder="Award Name"  name="clinicawardname" value=${clinicprofileaward.award}/>
                                                                    </div>

                                                                    <div  class="col-md-2 col-lg-2 form-group ">

                                                                        <select name="clinicawardyear" class="form-control select2 input-awardyear" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${clinicprofileaward.awardyear}</option>
                                                                            <c:forEach items="${yearslist}" var="year" >
                                                                                <c:out value="${year}"/>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div> 
                                                                </c:forEach>
                                                            </div>

                                                        </c:if>


                                                        <div id="awardentry1" class="clonedInput_6">
                                                            <div class="row">
                                                                <div  class="col-md-6 col-lg-5 form-group">
                                                                    <input type="text" class="edit-input form-control input-award" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           placeholder="Award Name"  name="clinicawardname" />
                                                                </div>
                                                                <div  class="col-md-2 col-lg-2 form-group">

                                                                    <select name="clinicawardyear" class="form-control select2 input-awardyear" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Year</option>
                                                                        <c:forEach items="${yearslist}" var="year" >
                                                                            <c:out value="${year}"/>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div> 


                                                            </div> 
                                                        </div>
                                                        <div class="col-sm-2 col-lg-3">     
                                                            <span >
                                                                <button type="button" id="btnAdd_6" name="btnAdd" class="btn" data-position="top-left" >
                                                                    <span class="glyphicon glyphicon-plus"></span>
                                                                </button>
                                                                <button type="button" id="btnDel_6" name="btnDel" class="btn">
                                                                    <span class="glyphicon glyphicon-minus"></span>
                                                                </button>
                                                                <br/>
                                                            </span>
                                                        </div>


                                                        <div class="row"></div>
                                                        <div class="row"></div>
                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>



                    <!--Specialization-->

                    <div class="row topmargin_5 clinicprofilespecialization">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Specialization</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group ">
                                                    <c:if test="${selectedclinicspeciallist != null}" >
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                                <p class="box1 profile_p">Specialization
                                                                    <i class="icon-star"></i>
                                                                    <c:forEach items="${selectedclinicspeciallist}" var="clinicprofilespe" >    
                                                                    <div class="topmargin_5 row"> 
                                                                        <select name="specializationname" class="form-control select2" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${clinicprofilespe.specializationname}</option>
                                                                            <c:forEach items="${specializationlist}" var="specialization" >
                                                                                <c:out value="${specialization}"/>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </c:forEach>
                                                                </p>
                                                            </div>

                                                        </div>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofilespecialization" role="form"  action="#" id = "clinicprofilespecialization" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <div id="specialentry1" class="clonedInput_8">
                                                            <div class="row">

                                                                <div  class="col-md-6 col-lg-5 form-group">
                                                                    <select name="clinicspecializationname" class="form-control select2 input-specializationname" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Specialization Name </option>
                                                                        <c:forEach items="${specializationlist}" var="specialization" >
                                                                            <c:out value="${specialization}"/>
                                                                        </c:forEach>
                                                                    </select>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2 col-lg-3">     
                                                            <span >
                                                                <button type="button" id="btnAdd_8" name="btnAdd" class="btn" data-position="top-left" >
                                                                    <span class="glyphicon glyphicon-plus"></span>
                                                                </button>
                                                                <button type="button" id="btnDel_8" name="btnDel" class="btn">
                                                                    <span class="glyphicon glyphicon-minus"></span>
                                                                </button>
                                                                <br/>
                                                            </span>
                                                        </div>


                                                        <div class="row"></div>
                                                        <div class="row"></div>
                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>

                    <!--Services-->
                    <div class="row topmargin_5 clinicprofileservice">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Services</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i>
                                        </button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group ">
                                                    <c:if test="${selectedclinicservicelist != null}" >
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                                <p class="box1 profile_p">Services
                                                                    <i class="icon-star"></i>
                                                                    <c:forEach items="${selectedclinicservicelist}" var="selectedclinicservice" >    
                                                                    <div class="topmargin_5 row"> 
                                                                        <select name="servicename" class="form-control select2" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${selectedclinicservice.servicename}</option>
                                                                            <c:forEach items="${servicelist}" var="service" >
                                                                                <c:out value="${service}"/>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </c:forEach>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="clinicprofileservice" role="form"  action="#" id = "clinicprofileservice" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >
                                                        <div id="serviceentry1" class="clonedInput_9">
                                                            <div class="row">
                                                                <div  class="col-md-6 col-lg-5 form-group">
                                                                    <select name="clinicservicename" class="form-control select2 input-servicename" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Service Name </option>
                                                                        <c:forEach items="${servicelist}" var="service" >
                                                                            <c:out value="${service}"/>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2 col-lg-3">     
                                                            <span >
                                                                <button type="button" id="btnAdd_9" name="btnAdd" class="btn" data-position="top-left" >
                                                                    <span class="glyphicon glyphicon-plus"></span>
                                                                </button>
                                                                <button type="button" id="btnDel_9" name="btnDel" class="btn">
                                                                    <span class="glyphicon glyphicon-minus"></span>
                                                                </button>
                                                                <br/>
                                                            </span>
                                                        </div>

                                                        <div class="row"></div>
                                                        <div class="row"></div>
                                                        <div class="row">
                                                            <div class="profilesubmit">
                                                                <input type="submit" class="box1 btn btn-primary savebtn" id="profilemainsubmit" value="Save">
                                                                <input type="button" class="box1 btn btn-primary cancelbtn" value="Cancel">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>



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
        <script>
            $(function () {
                //Initialize Select2 Elements
                $(".select2").select2();
            });
        </script>

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
                    allowedExtensions: ['jpeg', 'jpg'],
                    itemLimit: 5,
                    sizeLimit: 51200 // 50 kB = 50 * 1024 bytes
                }
            });

            $('#trigger-upload').click(function () {
                $('#fine-uploader-manual-trigger').fineUploader('uploadStoredFiles');
            });
        </script>

    </body>
</html>
