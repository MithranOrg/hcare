<%-- 
    Document   : patientRegistrationPage
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
        <link rel="stylesheet" href="../resources/plugins/intl-tel-input-master/build/css/intlTelInput.css">

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

        <!--        <div id="container" class="patientregform ">
                    <div class="donation-meter" >
        
                        
                        <div class="bulb">
                            <span class="red-circle" style="height: 0px"></span>
                            <span class="filler" style="height: 0px">
                                <span></span>
                            </span>
                        </div>
                        <span class="glass">
                            <strong class="total" ></strong>
                            <span class="amount" ></span>
                        </span>
                    </div>
                </div>-->
        <div id="container" class="patientregform ">
            <h2> Sign up</h2>
            <div id="first_step">
                <form action="../secured/securedPasscode.jsp" method="post"  class="form-horizontal" role="form" enctype="multipart/form-data" id="patientregform">

                    <div class="form-group">
                        <div>
                            <input type="text" class="form-control" name="name" id="firstname"  placeholder="Full Name"
                                   data-validation="required length" data-validation-length="4-20" 
                                   data-validation-error-msg="Minimum 4 characters required" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" 
                                   data-validation="required length custom" data-validation-length="8-15" regexp="^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$"
                                   data-validation-error-msg="Atleast 8 characters required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div >
                            <input type="password" class="form-control"  name="cpassword" id="cpassword" placeholder="Confirm Password"
                                   data-validation-confirm="password" data-validation="confirmation"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div >
                            <select id="gender" class="form-control" name="gender"  data-validation="required" data-validation-error-msg="Please select Gender" >
                                <option value="" >Select Gender</option>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>

                    </div>

                    <div class="form-group">
                        <div >
                            <input type="text" id="dob_dt" name="dob_dt" class="form-control" placeholder="dd-mm-yyyy"
                                   data-validation="date"
                                   data-validation-format="dd-mm-yyyy">
                        </div>
                    </div>

                    <div class="form-group">
                        <div >
                            <input type="text" class="form-control"  name="email" id="email" placeholder="Email" 
                                   data-validation="email" data-validation-error-msg="Invalid Email Address"/>
                        </div>
                    </div>

                    <div >
                        <div >

                            <input type="text" name="contact_no" id="contactno" class="form-control mobileno" placeholder="Mobile Number" 
                                   >
                            <span id="error-msg" class="hide countryerror">Invalid number</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="checkbox terms">
                            <label>
                                <input type="checkbox" required="true"> I agree to the <a href="#">terms</a>
                            </label>
                        </div>
                    </div><!-- /.col -->   

            </div>      <!-- clearfix -->

            <div class="form-group">
                <div>
                    <input class="submit" type="submit" name="submit" id="submit" value="" />
                </div>
            </div>

        </form>


    </div>
    <div id="container" class="afterlogin"></div>
</div>

<script type="text/javascript" src="../resources/JQuery/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="../resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../resources/jQuery-Form-Validator-master/form-validator/jquery.form-validator.min.js"></script>
<script type="text/javascript" src="../resources/plugins/intl-tel-input-master/build/js/intlTelInput.min.js"></script>
<script src="../resources/plugins/intl-tel-input-master/build/js/intlTelInput.js"></script>

</body>

<script>

    $.validate({
        modules: 'location, date, security, file',
        onModulesLoaded: function () {

        }
    });

    //  $("#contactno").intlTelInput({onlyCountries: ["in"], utilsScript: "../resources/plugins/intl-tel-input-master/build/js/utils.js"});


</script>

<script>
    var telInput = $("#contactno"),
            errorMsg = $("#error-msg");


// initialise plugin
    telInput.intlTelInput({
        utilsScript: "../resources/plugins/intl-tel-input-master/build/js/utils.js"
    });

    var reset = function () {
        telInput.removeClass("error");
        errorMsg.addClass("hide");

    };

// on blur: validate
    telInput.blur(function () {
        reset();
        if ($.trim(telInput.val())) {
            if (!telInput.intlTelInput("isValidNumber")) {
                telInput.addClass("error");
                errorMsg.removeClass("hide");
            }
        } else if (!$.trim(telInput.val())) {
            telInput.addClass("error");
            errorMsg.removeClass("hide");
        }
    });

// on keyup / change flag: reset
    telInput.on("keyup change", reset);
</script>

</html>
