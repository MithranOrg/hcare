<%-- 
    Document   : homePage
    Created on : 26 Jun, 2016, 3:15:47 PM
    Author     : Madhankumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.thamiyan.constants.Constants"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>HomePage</title>
        <link rel="stylesheet" type="text/css" href="resources/bootstrap-3.3.6-dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="resources/assets/css/main.css">
        <link href='http://fonts.googleapis.com/css?family=Montserrat|Dancing+Script:700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

        <!-- Swatchbook code  -->
        <meta name="description" content="Animated Swatch Book with CSS3 and jQuery" />
        <meta name="keywords" content="swatch book, css3, jquery, animated, rotation, transition, folding fan" />
        <meta name="author" content="Thamiyan" />
        <link rel="stylesheet" type="text/css" href="resources/plugins/SwatchBook/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="resources/plugins/SwatchBook/css/style.css" />
        <script type="text/javascript" src="resources/plugins/SwatchBook/js/modernizr.custom.79639.js"></script> 
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
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="global/login.jsp">Login</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div><!-- navbar-collapse -->
                </div><!-- container-fluid -->
            </nav>
        </section>

        <div class="container">


            <section class="main">

                <div id="sb-container" class="sb-container">

                    <div id="firstcard">
                        <span class="sb-icon icon-cog"></span>
                        <h4><span class="caption">General Physician</span></h4>
                    </div>
                    <div>
                        <span class="sb-icon icon-flight"></span>
                        <h4><span>Dentist</span></h4>
                    </div>	
                    <div>
                        <span class="sb-icon icon-eye"></span>
                        <h4><span>Ophthalmologist</span></h4>
                    </div>	
                    <div>
                        <span class="sb-icon icon-install"></span>
                        <h4><span>Dermatologist</span></h4>
                    </div>	
                    <div>
                        <span class="sb-icon icon-bag"></span>
                        <h4><span>Homeopath</span></h4>
                    </div>	
                    <div>
                        <span class="sb-icon icon-globe"></span>
                        <h4><span>Ayurveda</span></h4>
                    </div>	
                    <div>
                        <span class="sb-icon icon-picture"></span>
                        <h4><span>Cardiologist</span></h4>											
                    </div>	
                    <div>
                        <span class="sb-icon icon-video"></span>
                        <h4><span>Gastroenterologist</span></h4>											
                    </div>	
                    <div>
                        <span class="sb-icon icon-download"></span>
                        <h4><span>Psychiatrist</span></h4>											
                    </div>	
                    <div>
                        <span class="sb-icon icon-mobile"></span>
                        <h4><span>Ear-Nose-Throat</span></h4>											
                    </div>
                    <div>
                        <span class="sb-icon icon-camera"></span>
                        <h4><span>Gynecologist-obstetrician</span></h4>											
                    </div>
                    <div>
                        <span class="sb-icon icon-camera"></span>
                        <h4><span>Neurologist</span></h4>											
                    </div>
                    <div>
                        <span class="sb-icon icon-camera"></span>
                        <h4><span>Urologist</span></h4>											
                    </div>
                    <div id="lastcard" class="lastcard">
                        <span class="sb-icon icon-globe"></span>

                        <span class="doctorcard fa fa-stethoscope fa-align-center"><h2>Doctor</h2></span><br/>
                        <span class="medicalcard fa fa-hospital-o fa-align-center"><h2>Medicals</h2></span><br/>
                        <span class="diagnosticcard fa fa-flask fa-align-center" style="padding:4px;"><h2>Diagnostic Labs</h2></span><br/>
                        <span class="veterinarycard fa fa-stethoscope fa-align-center"><h2>Veterinary</h2></span><br/>
                    </div>


                </div><!-- sb-container -->

            </section>

        
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0
        </div>
        <strong>Copyright &copy; 2016-2018 <a href="#">Thamiyan</a>.</strong> All rights
        reserved.
    </footer>
    <script type="text/javascript" src="resources/JQuery/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>


    <script type="text/javascript" src="resources/plugins/SwatchBook/js/jquery.swatchbook.js"></script>
    <script src="resources/plugins/alert/alert.js"></script>

    <script type="text/javascript">
        $(function () {

            $('#sb-container').swatchbook(
                    {
                        // number of degrees that is between each item
                        angleInc: 10,
                        neighbor: 6,
                        // if it should be closed by default
                        initclosed: true,
                        // index of the element that when clicked, triggers the open/close function
                        // by default there is no such element
                         closeIdx: 13
                    });

        });
    </script>
<!--    <script>
        $('#lastcard').click(function () {
            $('#firstcard').find('.caption').text('Madhan');
        });
    </script>-->

</body>
</html>
