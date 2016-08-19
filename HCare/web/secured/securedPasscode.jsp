<%-- 
    Document   : securedPasscode
    Created on : 26 Jun, 2016, 5:39:51 PM
    Author     : Madhankumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.thamiyan.constants.Constants"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Patient Registration Page</title>
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
                            <%= Constants.COMPANY_NAME %>
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

            <div id="container" class="securedpasscode">
                <h3>OTP send to your registered mobile number</h3>
                <div id="first_step">
                    <form action="" method="post"  class="form-horizontal" role="form" enctype="multipart/form-data" id="securedpasscode">

                        <div class="form-group">
                            <div class="col-md-8">

                                <input type="text" class="form-control" name="otpcode"  id="otpcode" 
                                       placeholder="One Time Password" 
                                       data-validation="required" 
                                       data-validation-error-msg="One Time Password Required" />
                            </div>
                            <div class="col-md-4">
                                <button type="submit" class="btn">Submit</button>
                            </div>
                        </div>
                    </form>
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
