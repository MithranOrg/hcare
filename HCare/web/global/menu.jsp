<%-- 
    Document   : menu
    Created on : 6 Jul, 2016, 12:44:47 AM
    Author     : Madhankumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                            HealthCare
                        </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="../homePage.jsp">Home</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Doctors</a></li>
                            <li><a href="../global/login.jsp">Login</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div><!-- navbar-collapse -->
                </div><!-- container-fluid -->
            </nav>
    </body>
</html>
