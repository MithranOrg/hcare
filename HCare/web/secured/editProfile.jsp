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
        <title>Edit Profile</title>
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
                        <li class="active">User Profile</li>
                    </ol>
                </section>

                <section class="content profile-content">

                    <div class="row profilemain">
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
                                                    <div class="box1 alpha topmargin_10">
                                                        <img  src="../resources/assets/img/unknown_user.png" class="profile-thumbnail" alt="User Image">
                                                    </div>
                                                    <div class="col-md-9 col-lg-9">
                                                        <p class="profilename topmargin_10 box1">Madhan</p>  
                                                        <p class="box1 topmargin_10 rightbox1"> Created On : Jul 24 2016</p>
                                                    </div>
                                                    <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                        <p class="box1 profile_p">Gender 
                                                            <i class="icon-star"></i>
                                                            : ${gender}
                                                        </p>
                                                    </div>
                                                    <div class=" box1 col-md-9 col-lg-9 profile_p">
                                                        <p class="box1 profile_p">Year of Experience
                                                            <i class="icon-star"></i>
                                                            : ${yearofexperience}
                                                        </p>

                                                    </div>

                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profilemain" role="form"  action="#" id = "profilemain" enctype="multipart/form-data" method="post" >
                                                <div class="control-group  col-lg-12 col-md-12">
                                                    <div class="edit-div col-lg-12 col-md-12 profilemaindiv" >

                                                        <div class="row" >
                                                            <label for="name" class="col-md-4 col-lg-2 ">
                                                                <p class="edit-label">Name<i class="icon-star"></i></p>
                                                            </label> 
                                                            <div class="col-md-4 col-lg-4 form-group">
                                                                <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                       name="profilename" value="${profilename}"/>
                                                            </div>
                                                        </div>


                                                        <div class="row">
                                                            <label for="gender" class="col-md-4 col-lg-2 ">
                                                                <p class="edit-label">Gender<i class="icon-star"></i></p>
                                                            </label> 
                                                            <div class="col-md-4 col-lg-4">

                                                                <div class="radio">
                                                                    <label>
                                                                        <input type="radio" checked 
                                                                               name="genderoption" id="genderoption1" value="male" >
                                                                        Male
                                                                    </label>
                                                                    &nbsp;&nbsp;
                                                                    <label>
                                                                        <input type="radio" 
                                                                               name="genderoption" id="genderoption2" value="female">
                                                                        Female
                                                                    </label>
                                                                </div>

                                                            </div>
                                                        </div>


                                                        <div class="row">
                                                            <label for="experienceyear" class="col-md-4 col-lg-2 ">
                                                                <p class="edit-label">Year of Experience<i class="icon-star"></i></p>
                                                            </label>
                                                            <div class="col-md-1 col-lg-1 form-group">
                                                                <select class="form-control selectcontrol topmargin_10 "  data-validation="required" 
                                                                        data-validation-error-msg="This value should not be blank"
                                                                        size="1" name = "experienceyear"
                                                                        >
                                                                    <option value=""> </option>
                                                                    <% for (int i = 0; i <= 75; i++) {%>
                                                                    <option value="<%= i%>"><% out.print(i); %></option>
                                                                    <% }%>
                                                                </select> 
                                                            </div>
                                                        </div>

                                                        <div id="fine-uploader-gallery"></div>




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



                    <div class="row topmargin_5 profileedu">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Education</h3>
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

                                                    <c:if test="${educationdtl == null}" >
                                                        <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                            <p class="box1 profile_p">You are yet to add a qualification to this profile. 

                                                            </p>
                                                        </div>
                                                    </c:if>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profileedu" role="form"  action="#" id = "profileedu" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >


                                                        <c:if test="${profileedulist != null}" >
                                                            <div class="row">

                                                                <c:forEach items="${selectedprofileedulist}" var="profileedu" >    

                                                                    <div  class="col-md-4 form-group">

                                                                        <select name="degreename" class="form-control select2 input-degrename" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profileedu.degreename}</option>
                                                                            <c:forEach items="${degreenames}" var="degreename" >
                                                                                <c:out value="${degreename}"/><br>
                                                                            </c:forEach>
                                                                        </select>

                                                                    </div> 
                                                                    <div  class="col-md-4 form-group">
                                                                        <select name="collegename" class="form-control select2 input-collegename" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profileedu.collegename}</option>
                                                                            <c:forEach items="${collegenames}" var="collegename" >
                                                                                <c:out value="${collegename}"/><br>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>

                                                                    <div class="col-md-2 form-group">

                                                                        <select name="collegeyear" class="form-control select2 input-collegeyear" style="width: 100%;"  data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option value="">${profileedu.year}</option>
                                                                            <c:forEach items="${yearslist}" var="year" >
                                                                                <c:out value="${year}"/><br>
                                                                            </c:forEach>
                                                                        </select>

                                                                    </div>
                                                                </c:forEach>


                                                            </div>
                                                        </c:if>


                                                        <div id="entry1" class="clonedInput_1">
                                                            <div class="row">
                                                                <div  class="col-md-4 form-group">

                                                                    <select name="collegename" class="form-control select2 input-collegename" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Select College Name</option>
                                                                        <c:forEach items="${collegenames}" var="collegename" >
                                                                            <c:out value="${collegename}"/><br>
                                                                        </c:forEach>
                                                                    </select>

                                                                </div> 

                                                                <div  class="col-md-4 form-group">

                                                                    <select name="degreename" class="form-control select2 input-degrename" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Select Degree Name</option>
                                                                        <c:forEach items="${degreenames}" var="degreename" >
                                                                            <c:out value="${degreename}"/><br>
                                                                        </c:forEach>
                                                                    </select>

                                                                </div> 
                                                                <div class="col-md-2 form-group">

                                                                    <select name="collegeyear" class="form-control select2 input-collegeyear" style="width: 100%;"  data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option value="">Year</option>
                                                                        <c:forEach items="${yearslist}" var="year" >
                                                                            <c:out value="${year}"/><br>
                                                                        </c:forEach>
                                                                    </select>

                                                                </div>
                                                            </div> 
                                                        </div>
                                                        <div class="col-sm-2 col-lg-3">     
                                                            <span >
                                                                <button type="button" id="btnAdd_1" name="btnAdd" class="btn" data-position="top-left" >
                                                                    <span class="glyphicon glyphicon-plus"></span>
                                                                </button>
                                                                <button type="button" id="btnDel_1" name="btnDel" class="btn">
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
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>



                    <div class="row topmargin_5 profilecontact">
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
                                                            <br>${primarycontact}
                                                        </p>
                                                    </div>
                                                    <div class="topmargin_10  box1 col-md-6 col-lg-6 profile_p">
                                                        <p class="box1 profile_p ">Primary Email Address 
                                                            <i class="icon-star"></i>
                                                            <br>${primaryemailid}
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

                                                            <c:forEach items="${additionalcontacts}" var="additionalcontact" >
                                                                <c:out value="${additionalcontact}"/><br>
                                                            </c:forEach>

                                                        </p>
                                                    </div>
                                                    <div class=" box1 col-md-6 col-lg-6 profile_p">
                                                        <p class="box1 profile_p">Additional Email Address
                                                            <i class="icon-star"></i>

                                                            <c:forEach items="${additionalemails}" var="additionalemail" >
                                                                <c:out value="${additionalemail}"/><br>
                                                            </c:forEach>

                                                        </p>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profilecontact" role="form"  action="#" id = "profilecontact" enctype="multipart/form-data" method="post" >
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
                                                                           name="pcontact" value="${primarycontact}"/>
                                                                </div>
                                                            </div> 

                                                            <div class="row">
                                                                <div>
                                                                    <label for="acontact" class="col-md-4 col-lg-6 ">
                                                                        <p class="edit-label">Additional Mobile<i class="icon-star"></i></p>
                                                                    </label>
                                                                </div>
                                                            </div> 
                                                            <c:if test="${additionalcontacts != null}" >
                                                                <div class="row">

                                                                    <c:forEach items="${additionalcontacts}" var="additionalcontact" >    
                                                                        <div class="col-md-9 col-lg-9 ">
                                                                            <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                                   name="additionalcontact" value=${additionalcontact}  />
                                                                        </div>
                                                                    </c:forEach>


                                                                </div>
                                                            </c:if>
                                                            <div  id="addcontactentry1" class="row clonestyle clonedInput_2">
                                                                <div class="col-md-9 col-lg-9 ">
                                                                    <input type="text" class="edit-input form-control input-additionalcontact" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           name="newadditionalcontact" />
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
                                                                           name="primaryemail" value="${primaryemail}"/>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div>
                                                                    <label for="aemail" class="col-md-4 col-lg-6 ">
                                                                        <p class="edit-label">Additional Email<i class="icon-star"></i></p>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <c:if test="${additionalemails != null}" >
                                                                <div class="row">
                                                                    <c:forEach items="${additionalemails}" var="additionalemail" >    
                                                                        <div class="col-md-9 col-lg-9 ">
                                                                            <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                                   name="additionalemail" value=${additionalemail}  />
                                                                        </div>
                                                                    </c:forEach>

                                                                </div>
                                                            </c:if>
                                                            <div class="row clonestyle clonedInput_3" id="addemailentry1" >
                                                                <div class="col-md-9 col-lg-9">
                                                                    <input type="text" class="edit-input form-control input-additionalemail" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           name="newadditionalemail" />
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


                    <div class="row topmargin_5 profilereg">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Registration</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool editprofile" data-widget="e"><i class="fa fa-edit">Edit</i></button>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div id="container" >
                                        <div class="row">
                                            <div class="col-md-11 col-lg-11 box1 text-info">
                                                <div class="control-group ">
                                                    <c:if test="${registrationdtl == null}" >
                                                        <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                            <p class="box1 profile_p">You are yet to add a Registration details to this profile. 

                                                            </p>
                                                        </div>
                                                    </c:if>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profilereg" role="form"  action="#" id = "profilereg" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <c:if test="${selectedprofilereglist != null}" >
                                                            <div class="row">
                                                                <c:forEach items="${selectedprofilereglist}" var="profilereg" >    
                                                                    <div  class="col-md-4 sol-lg-2 form-group">
                                                                        <input type="text" class="edit-input form-control input-regno" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                               placeholder="Registration Number"  name="regno" value=${selectedprofilereglist.regno}/>
                                                                    </div> 

                                                                    <div  class="col-md-4 col-lg-3 form-group">

                                                                        <select name="regyear" class="form-control select2 input-regyear" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${selectedprofilereglist.year}</option>
                                                                            <c:forEach items="${yearslist}" var="year" >
                                                                                <c:out value="${year}"/><br>
                                                                            </c:forEach>
                                                                        </select>

                                                                    </div> 
                                                                    <div class="col-md-2 col-lg-5 form-group">

                                                                        <select name="regcouncil" class="form-control select2 input-regcouncil" style="width: 100%;"  data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option value="">${selectedprofilereglist.regcouncil}</option>
                                                                            <c:forEach items="${regcouncils}" var="regcouncil" >
                                                                                <c:out value="${regcouncil}"/><br>
                                                                            </c:forEach>
                                                                        </select>

                                                                    </div>

                                                                </c:forEach>
                                                            </div> 
                                                        </c:if>





                                                        <div id="regentry1" class=" clonedInput_4">
                                                            <div class="row">
                                                                <div  class="col-md-4 sol-lg-2 form-group">
                                                                    <input type="text" class="edit-input form-control input-regno" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           placeholder="Registration Number"  name="regno" value="${registrationno}"/>
                                                                </div> 

                                                                <div  class="col-md-4 col-lg-3 form-group">

                                                                    <select name="regyear" class="form-control select2 input-regyear" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Year</option>
                                                                        <c:forEach items="${yearslist}" var="year" >
                                                                            <c:out value="${year}"/><br>
                                                                        </c:forEach>
                                                                    </select>

                                                                </div> 
                                                                <div class="col-md-2 col-lg-5 form-group">

                                                                    <select name="regcouncil" class="form-control select2 input-regcouncil" style="width: 100%;"  data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option value="">Registration Council</option>
                                                                        <c:forEach items="${regcouncils}" var="regcouncil" >
                                                                            <c:out value="${regcouncil}"/><br>
                                                                        </c:forEach>
                                                                    </select>

                                                                </div>
                                                            </div> 
                                                        </div>
                                                        <div class="col-sm-2 col-lg-3">     
                                                            <span >
                                                                <button type="button" id="btnAdd_4" name="btnAdd" class="btn" data-position="top-left" >
                                                                    <span class="glyphicon glyphicon-plus"></span>
                                                                </button>
                                                                <button type="button" id="btnDel_4" name="btnDel" class="btn">
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
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->


                    <div class="row topmargin_5 profileexper">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Experience</h3>
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

                                                    <c:if test="${experiencedtl == null}" >
                                                        <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                            <p class="box1 profile_p">You are yet to add a Experience details to this profile. 

                                                            </p>
                                                        </div>
                                                    </c:if>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profileexper" role="form"  action="#" id = "profileexper" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <c:if test="${profileexplist != null}" >
                                                            <div class="row">
                                                                <c:forEach items="${selectedprofileexplist}" var="profileexp" >    
                                                                    <div  class="col-md-2 col-lg-2 form-group smalltextinfo_15">
                                                                        <select name="expfromyear" class="form-control select2 input-regfromyear" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profileexp.expfromyear}</option>
                                                                            <c:forEach items="${yearslist}" var="year" >
                                                                                <c:out value="${year}"/>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-md-1 smalltextinfo_3 topmargin_5">To </div>
                                                                    <div  class="col-md-2 col-lg-2 form-group smalltextinfo_15">

                                                                        <select name="exptoyear" class="form-control select2 input-exptoyear" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profileexp.exptoyear}</option>
                                                                            <c:forEach items="${yearslist}" var="year" >
                                                                                <c:out value="${year}"/>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div> 
                                                                    <div class="col-md-2 col-lg-2 form-group smalltextinfo_20">
                                                                        <input type="text" class="edit-input form-control input-exprole" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                               placeholder="Role"  name="exprole" value=${profileexp.exprole}/>
                                                                    </div> 
                                                                    <div class="col-md-1 smalltextinfo_3 topmargin_5">At </div>
                                                                    <div class="col-md-2 col-lg-3 form-group smalltextinfo_25">
                                                                        <input type="text" class="edit-input form-control input-exprole" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                               placeholder="Organization"  name="exporg" value=${profileexp.exporg}/>
                                                                    </div>
                                                                    <div class="col-md-2 col-lg-2 form-group smalltextinfo_15">
                                                                        <select name="expcity" class="form-control select2 input-expcity" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profileexp.expcity}</option>
                                                                            <c:forEach items="${citylist}" var="city" >
                                                                                <c:out value="${city}"/>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>

                                                                </c:forEach>
                                                            </div>

                                                        </c:if>


                                                        <div id="experentry1" class="clonedInput_5">
                                                            <div class="row">
                                                                <div  class="col-md-2 col-lg-2 form-group smalltextinfo_15">
                                                                    <select name="expfromyear" class="form-control select2 input-expfromyear" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Year</option>
                                                                        <c:forEach items="${yearslist}" var="year" >
                                                                            <c:out value="${year}"/>
                                                                        </c:forEach>
                                                                    </select>

                                                                </div> 
                                                                <div class="col-md-1 smalltextinfo_3 topmargin_5">To </div>
                                                                <div  class="col-md-2 col-lg-2 form-group smalltextinfo_15">
                                                                    <select name="exptoyear" class="form-control select2 input-exptoyear" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Year</option>
                                                                        <c:forEach items="${yearslist}" var="year" >
                                                                            <c:out value="${year}"/>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div> 
                                                                <div class="col-md-2 col-lg-2 form-group smalltextinfo_20">
                                                                    <input type="text" class="edit-input form-control input-exprole" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           placeholder="Role"  name="exprole" />
                                                                </div> <div class="col-md-1 smalltextinfo_3 topmargin_5">At </div>
                                                                <div class="col-md-2 col-lg-3 form-group smalltextinfo_25">
                                                                    <input type="text" class="edit-input form-control input-exporg " data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           placeholder="Organization"  name="exporg" />
                                                                </div>
                                                                <div class="col-md-2 col-lg-2 form-group smalltextinfo_15">
                                                                    <select name="expcity" class="form-control select2 input-expcity" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">City</option>
                                                                        <c:forEach items="${citylist}" var="city" >
                                                                            <c:out value="${city}"/>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>

                                                            </div> 
                                                        </div>
                                                        <div class="col-sm-2 col-lg-3">     
                                                            <span >
                                                                <button type="button" id="btnAdd_5" name="btnAdd" class="btn" data-position="top-left" >
                                                                    <span class="glyphicon glyphicon-plus"></span>
                                                                </button>
                                                                <button type="button" id="btnDel_5" name="btnDel" class="btn">
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





                    <div class="row topmargin_5 profileaward">
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

                                                    <c:if test="${awarddtl == null}" >
                                                        <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                            <p class="box1 profile_p">You are yet to add a Award details to this profile. 

                                                            </p>
                                                        </div>
                                                    </c:if>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profileaward" role="form"  action="#" id = "profileaward" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <c:if test="${profileawardlist != null}" >
                                                            <div class="row">
                                                                <c:forEach items="${selectedprofileawardlist}" var="profileaward" >    
                                                                    <div  class="col-md-6 col-lg-5 form-group">
                                                                        <input type="text" class="edit-input form-control input-award" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                               placeholder="Award Name"  name="awardname" value=${profileaward.award}/>
                                                                    </div>

                                                                    <div  class="col-md-2 col-lg-2 form-group ">

                                                                        <select name="awardyear" class="form-control select2 input-awardyear" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profileaward.awardyear}</option>
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
                                                                           placeholder="Award Name"  name="awardname" />
                                                                </div>
                                                                <div  class="col-md-2 col-lg-2 form-group">

                                                                    <select name="awardyear" class="form-control select2 input-awardyear" style="width: 100%;"
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



                    <div class="row topmargin_5 profilemember">
                        <div class="col-md-11">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Memberships</h3>
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

                                                    <c:if test="${membershipdtl == null}" >
                                                        <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                            <p class="box1 profile_p">You are yet to add a Memberships detail to this profile. 

                                                            </p>
                                                        </div>
                                                    </c:if>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="row">
                                            <form name="profilemember" role="form"  action="#" id = "profilemember" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <c:if test="${profilememberlist != null}" >
                                                            <div class="row">
                                                                <c:forEach items="${selectedprofilememberlist}" var="profilemember" >    
                                                                    <div  class="col-md-6 col-lg-5 form-group">
                                                                        <select name="membername" class="form-control select2 input-membername" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profilemember.membername}</option>
                                                                            <c:forEach items="${memberlist}" var="year" >
                                                                                <c:out value="${member}"/>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </c:forEach>
                                                            </div>

                                                        </c:if>


                                                        <div id="memberentry1" class="clonedInput_7">
                                                            <div class="row">

                                                                <div  class="col-md-6 col-lg-5 form-group">
                                                                    <select name="membername" class="form-control select2 input-membername" style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value="">Member Name</option>
                                                                        <c:forEach items="${memberlist}" var="year" >
                                                                            <c:out value="${member}"/>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div> 
                                                        </div>
                                                        <div class="col-sm-2 col-lg-3">     
                                                            <span >
                                                                <button type="button" id="btnAdd_7" name="btnAdd" class="btn" data-position="top-left" >
                                                                    <span class="glyphicon glyphicon-plus"></span>
                                                                </button>
                                                                <button type="button" id="btnDel_7" name="btnDel" class="btn">
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




                    <div class="row topmargin_5 profilecity">
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




                    <div class="row topmargin_5 profilespecialization">
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
                                                    <c:if test="${selectedspeciallist != null}" >
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                                <p class="box1 profile_p">Specialization
                                                                    <i class="icon-star"></i>
                                                                    <c:forEach items="${selectedspeciallist}" var="profilespe" >    
                                                                    <div class="topmargin_5 row"> 
                                                                        <select name="specializationname" class="form-control select2" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${profilespe.specializationname}</option>
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
                                            <form name="profilespecialization" role="form"  action="#" id = "profilespecialization" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >

                                                        <div id="specialentry1" class="clonedInput_8">
                                                            <div class="row">

                                                                <div  class="col-md-6 col-lg-5 form-group">
                                                                    <select name="specializationname" class="form-control select2 input-specializationname" style="width: 100%;"
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




                    <div class="row topmargin_5 profileservices">
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
                                                    <c:if test="${selectedservicelist != null}" >
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-9 col-lg-9 profile_p">
                                                                <p class="box1 profile_p">Services
                                                                    <i class="icon-star"></i>
                                                                    <c:forEach items="${selectedservicelist}" var="selectedservice" >    
                                                                    <div class="topmargin_5 row"> 
                                                                        <select name="servicename" class="form-control select2" style="width: 100%;"
                                                                                data-validation="required" 
                                                                                data-validation-error-msg="This value should not be blank">
                                                                            <option selected="selected" value="">${selectedservice.servicename}</option>
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
                                            <form name="profileservice" role="form"  action="#" id = "profileservice" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >
                                                        <div id="serviceentry1" class="clonedInput_9">
                                                            <div class="row">
                                                                <div  class="col-md-6 col-lg-5 form-group">
                                                                    <select name="servicename" class="form-control select2 input-servicename" style="width: 100%;"
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









                    <div class="row topmargin_5 profilepractice">
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
                                                    <c:if test="${selectedpracticelist != null}" >
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                <p class="box1 profile_p">Consultation 
                                                                    <i class="icon-star"></i><br>
                                                                    ${selectedpracticelist.fees}

                                                                </p>
                                                            </div><br><br>
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-4 profile_p" >
                                                                <input type="checkbox" style="float:left;margin-top:30px;" class="form-control" name="freeconsult" checked=${selectedpracticelist.freeconsult}/>
                                                                <p class="profile_p" style="display:inline;">Free Consultation
                                                                </p>
                                                                ${selectedpracticelist.freeconsult}
                                                            </div>
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-8 profile_p" >
                                                                <input type="checkbox" style="float:left;margin-top:30px;" class="form-control" name="freeconsult" checked=${selectedpracticelist.freeconsult}/>
                                                                <p class="profile_p" style="display:inline;">Timings
                                                                </p>
                                                                ${selectedpracticelist.timings}
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                <p class="box1 profile_p">Appointment Duration
                                                                    <i class="icon-star"></i><br>
                                                                    <select name="duration" class="form-control select2 " style="width: 100%;"
                                                                            data-validation="required" 
                                                                            data-validation-error-msg="This value should not be blank">
                                                                        <option selected="selected" value=${selectedpracticelist.duration}>${selectedpracticelist.duration}</option>
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
                                            <form name="profilepractice" role="form"  action="#" id = "profilepractice" enctype="multipart/form-data" method="post" >
                                                <div class="control-group ">
                                                    <div class="edit-div" >
                                                        <div id="practiceentry1" class="col-lg-12">

                                                            <div class="row">
                                                                <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                    <b><p class="box1 profile_p">Consultation </p></b>
                                                                    <i class="icon-star"></i><br>
                                                                    <input type="text" class="edit-input form-control" data-validation="required" data-validation-error-msg="This value should not be blank"
                                                                           placeholder="Fees"  name="fees" />

                                                                </div><br>
                                                                <div class="topmargin_10  box1 col-md-2 col-lg-4 profile_p">

                                                                    <input type="checkbox"  name="freeconsult" style="display:left;" />
                                                                    <p class="profile_p" style="display:inline;">Free Consultation</p>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="topmargin_10  box1 col-md-2 col-lg-2 profile_p">
                                                                    <b><p class="box1 profile_p">Appointment Duration</b>
                                                                    <i class="icon-star"></i><br>
                                                                    <select name="duration" class="form-control select2  topmargin_10" style="width: 100%;"
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
                                                                                <c:if test="${practicetimings}!= null" >
                                                                                    <c:forEach items="${practicetimings}" var="practicetime" >    
                                                                                        <tr>

                                                                                            <td class="box1">
                                                                                                <input type="checkbox" class="box1" name="practiceday" checked=${practicetimings.monday.status}/>
                                                                                                <b> <p class="box1"> ${practicetime.day} </p></b>
                                                                                            </td>
                                                                                            <td>
                                                                                                <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                        size="1" name = "practicefromhours">
                                                                                                    <option value=${practicetime.fromhours}>${practicetime.fromhours} </option>
                                                                                                    <% for (int i = 1; i <= 12; i++) {%>
                                                                                                    <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                    <% }%>
                                                                                                </select> 
                                                                                                <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                        size="1" name = "practicefrommin">
                                                                                                    <option value=${practicetime.fromminutes}> ${practicetime.fromminutes}</option>
                                                                                                    <% for (int i = 1; i <= 60; i++) {%>
                                                                                                    <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                    <% }%>
                                                                                                </select> 
                                                                                                <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                        size="1" name = "practicefromdaytime">
                                                                                                    <option value=${practicetime.fromdaytime}> ${practicetime.fromdaytime}</option>
                                                                                                    <option value="AM">AM</option>
                                                                                                    <option value="PM">PM</option>
                                                                                                </select> 
                                                                                                <p style="display: inline;float: left;margin-top: 15px;margin-left: 5px;margin-right: 5px;"> -- </p>
                                                                                                <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                        size="1" name = "practicetohours">
                                                                                                    <option value=${practicetime.tohours}>${practicetime.tohours} </option>
                                                                                                    <% for (int i = 1; i <= 12; i++) {%>
                                                                                                    <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                    <% }%>
                                                                                                </select> 
                                                                                                <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                        size="1" name = "practicetomin">
                                                                                                    <option value=${practicetime.tominutes}> ${practicetime.tominutes}</option>
                                                                                                    <% for (int i = 1; i <= 60; i++) {%>
                                                                                                    <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                    <% }%>
                                                                                                </select> 
                                                                                                <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                        size="1" name = "practicetodaytime">
                                                                                                    <option value=${practicetime.todaytime}> ${practicetime.todaytime}</option>
                                                                                                    <option value="AM">AM</option>
                                                                                                    <option value="PM">PM</option>
                                                                                                </select> 
                                                                                            </td>

                                                                                        </tr>

                                                                                    </c:forEach>
                                                                                </c:if> 
                                                                                <c:if test="${practicetimings== null}" >
                                                                                    <% String[] daylist = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}; %>


                                                                                    <% for (int day = 0; day < daylist.length; day++) { %>

                                                                                    <tr>

                                                                                        <td class="box1">
                                                                                            <input type="checkbox" class="box1" name="practiceday" checked=${practicetimings.monday.status}/>
                                                                                            <b> <p class="box1"> <% out.println(daylist[day]);%> </p></b>
                                                                                        </td>
                                                                                        <td>
                                                                                            <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                    size="1" name = "practicefromhours">
                                                                                                <option> </option>
                                                                                                <% for (int i = 1; i <= 12; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                    size="1" name = "practicefrommin">
                                                                                                <option> </option>
                                                                                                <% for (int i = 1; i <= 60; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                    size="1" name = "practicefromdaytime">
                                                                                                <option></option>
                                                                                                <option value="AM">AM</option>
                                                                                                <option value="PM">PM</option>
                                                                                            </select> 
                                                                                            <p style="display: inline;float: left;margin-top: 15px;margin-left: 5px;margin-right: 5px;"> -- </p>
                                                                                            <select class="box1 notopmargin form-control selectcontrol topmargin_10 " style="width:30px;"   
                                                                                                    size="1" name = "practicetohours">
                                                                                                <option > </option>
                                                                                                <% for (int i = 1; i <= 12; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;"  
                                                                                                    size="1" name = "practicetomin">
                                                                                                <option></option>
                                                                                                <% for (int i = 1; i <= 60; i++) {%>
                                                                                                <option value="<%= i%>"><% out.print(i); %></option>
                                                                                                <% }%>
                                                                                            </select> 
                                                                                            <select class="box1  notopmargin form-control selectcontrol topmargin_10 "  style="width:30px;" 
                                                                                                    size="1" name = "practicetodaytime">
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

        <script type="text/template" id="qq-template-gallery">
            <div class="qq-uploader-selector qq-uploader qq-gallery" qq-drop-area-text="Drop files here">
            <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
            <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
            </div>
            <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
            <span class="qq-upload-drop-area-text-selector"></span>
            </div>
            <div class="qq-upload-button-selector qq-upload-button">
            <div>Upload a file</div>
            </div>
            <span class="qq-drop-processing-selector qq-drop-processing">
            <span>Processing dropped files...</span>
            <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
            </span>
            <ul class="qq-upload-list-selector qq-upload-list" role="region" aria-live="polite" aria-relevant="additions removals">
            <li>
            <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
            <div class="qq-progress-bar-container-selector qq-progress-bar-container">
            <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-progress-bar-selector qq-progress-bar"></div>
            </div>
            <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
            <div class="qq-thumbnail-wrapper">
            <img class="qq-thumbnail-selector" qq-max-size="120" qq-server-scale>
            </div>
            <button type="button" class="qq-upload-cancel-selector qq-upload-cancel">X</button>
            <button type="button" class="qq-upload-retry-selector qq-upload-retry">
            <span class="qq-btn qq-retry-icon" aria-label="Retry"></span>
            Retry
            </button>

            <div class="qq-file-info">
            <div class="qq-file-name">
            <span class="qq-upload-file-selector qq-upload-file"></span>
            <span class="qq-edit-filename-icon-selector qq-edit-filename-icon" aria-label="Edit filename"></span>
            </div>
            <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
            <span class="qq-upload-size-selector qq-upload-size"></span>
            <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">
            <span class="qq-btn qq-delete-icon" aria-label="Delete"></span>
            </button>
            <button type="button" class="qq-btn qq-upload-pause-selector qq-upload-pause">
            <span class="qq-btn qq-pause-icon" aria-label="Pause"></span>
            </button>
            <button type="button" class="qq-btn qq-upload-continue-selector qq-upload-continue">
            <span class="qq-btn qq-continue-icon" aria-label="Continue"></span>
            </button>
            </div>
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

            $('#fine-uploader-gallery').fineUploader({
                template: 'qq-template-gallery',
                request: {
                    endpoint: '/server/uploads'
                },
                thumbnails: {
                    placeholders: {
                        waitingPath: '/source/placeholders/waiting-generic.png',
                        notAvailablePath: '/source/placeholders/not_available-generic.png'
                    }
                },
                validation: {
                    allowedExtensions: ['jpeg', 'jpg', 'doc', 'pdf'],
                    itemLimit: 1,
                    sizeLimit: 501200 // 50 kB = 50 * 1024 bytes
                }
            });

        </script>



    </body>
</html>
