<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html lang="en">
    <head>
        <title>LoginForm</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="images/icons/favicoasdas.ico"/>
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="styles/until.css">
        <link rel="stylesheet" type="text/css" href="styles/form_log.css">


    </head>
    <body>

        <div class="bg-contact3" style="background-image: url('https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/1bg-01.jpg');">
            <div class="container-contact3">
                <div class="wrap-contact3">
                    <form name="myForm" class="contact3-form validate-form" onsubmit="return validateForm()" action="LoginServlet" method="POST">
                        <span class="contact3-form-title">
                            Login
                        </span>


                        <div class="wrap-input3 validate-input" data-validate="Username or Email is required">
                            <input class="input3" type="text" name="username" placeholder="Username Or Email"  >
                            <span class="focus-input3"></span>
                        </div>


                        <div class="wrap-input3 validate-input" data-validate="Password is required">
                            <input class="input3" type="password" name="password" placeholder="Your Password" >
                            <input type="hidden" name="Check" value="<%=request.getAttribute("false")%>">
                            <span class="focus-input3"></span>

                        </div>
                            <a href="registerform.jsp" style="color: #F6FA08"> Do not have account?</a>


                        <center>
                            <div class="container-contact3-form-btn">
                                <button class="contact3-form-btn" type="submit">
                                    Login
                                </button>
                            </div> 
                        </center>

                    </form>
                </div>
            </div>
        </div>

        <script>
            function validateForm() {
                var x = document.forms["myForm"]["Check"].value;
                if (x == null) {
                    alert("YOU INPUT USERNAME OR PASSWORD IS NOT CORRECT" + x);
                    return false;
                } else {
                    return true;
                }
            }
        </script>

        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script>
          $(".selection-2").select2({
              minimumResultsForSearch: 20,
              dropdownParent: $('#dropDownSelect1')
          });


        </script>
        <!--===============================================================================================-->
        <script src="js/form_si_re.js"></script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>


    </body>
</html>
