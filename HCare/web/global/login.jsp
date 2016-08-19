<%-- 
    Document   : login
    Created on : 26 Jun, 2016, 5:39:51 PM
    Author     : Madhankumar
--%>


<%@page import="com.thamiyan.social.facebook.FBConnection"%>
<%@page import="com.thamiyan.constants.Constants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%
    FBConnection fbConnection = new FBConnection();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="../resources/bootstrap-3.3.6-dist/css/bootstrap.min.css">

        <link rel="stylesheet" href="../resources/assets/css/main.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="../resources/plugins/iCheck/square/blue.css">
    </head>
    <body>
        <section >
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand logo" href="#">
                            <span><i class="fa fa-stethoscope"></i></span>
                                <%= Constants.COMPANY_NAME%>
                        </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="../homePage.jsp">Home</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div><!-- navbar-collapse -->
                </div><!-- container-fluid -->
            </nav>

        </section>
        <div>

            <div id="container" class="login ">
                <h2>Login</h2>
                <div id="first_step">
                    <form action="../secured/mainPage.jsp" method="post"  class="form-horizontal" role="form" enctype="multipart/form-data" id="login">

                        <div class="form-group">
                            <div >

                                <input type="text" class="form-control" name="username"  id="username" 
                                       placeholder="Email or Mobile Number" 
                                       data-validation="required email"  
                                       data-validation-error-msg="Invalid Email or Mobile Number" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div >
                                <input type="password" class="form-control" name="password" id="password" placeholder="Password" 
                                       data-validation="required" 
                                       data-validation-error-msg="Password Required" />
                            </div>
                            <a href="forgetPassword.jsp" class="forgotpwd">forgotten password?</a><br>
                        </div>





                        <div class="form-group">
                            <div>
                                <button type="submit" class="homepagebtn">Login</button>
                                <button class="homepagebtn" type="button" onclick="window.location = 'patientRegistrationPage.jsp';">Register</button>
                            </div>
                        </div>


                    </form>
                    <div class="hrline-container">
                        <hr class="hrline" align="left"/>
                        <span class="hr-text"> or Login with </span>
                        <hr class="hrline" align="right"/>

                    </div>
                    <div>
                        <a href="<%=fbConnection.getFBAuthUrl()%>" class="btn btn-md sociallogo" id="facebookbtn"
                           onClick = "window.open(this.href,'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=550px,height=550px');return false;">
                           <img src ="../resources/assets/img/facebook.png"/> 
                        </a>  

                        <a href="#" class="btn btn-md sociallogo" id="twitterbtn">
                            <img src ="../resources/assets/img/twitter.png"/> 
                        </a>

                        <a href="#" class="btn btn-md sociallogo" id="googleplusbtn">
                            <img src ="../resources/assets/img/google+.png"/> 
                        </a>
                    </div>

                </div>

            </div>

            <script type="text/javascript" src="../resources/JQuery/jquery-2.2.4.min.js"></script>
            <script type="text/javascript" src="../resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="../resources/jQuery-Form-Validator-master/form-validator/jquery.form-validator.min.js"></script>


    </body>

    <script>

                               $.validate({
                                   modules: 'location, date, security, file',
                                   onModulesLoaded: function () {

                                   }
                               });

    </script>

</html>
