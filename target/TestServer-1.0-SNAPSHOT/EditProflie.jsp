<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html lang="en">
    <head>
        <title>RegisterForm</title>

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
                    <form class="contact3-form validate-form" id="myForm" name="myForm" action="EditProflieServlet" method="POST">
                        <span class="contact3-form-title">
                            EDIT PROFILE
                        </span>

                        <input class="input3" type="hidden" name="idname" value="<%=session.getAttribute("login")%>">

                        <div class="wrap-input3 validate-input" data-validate="Name is required">
                            <input class="input3" type="text" name="fname" placeholder="Your Name" value="<%=request.getAttribute("fname")%>">
                            <span class="focus-input3"></span>
                        </div>


                        <div class="wrap-input3 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                            <input class="input3" type="text" name="lname" placeholder="Your LastName"value="<%=request.getAttribute("lname")%>">
                            <span class="focus-input3"></span>
                        </div>
                
                        <div class="wrap-input3 validate-input" data-validate="Phone is required">
                            <input class="input3" type="text" name="phone" placeholder="Your Phone" value="<%=request.getAttribute("phone")%>">
                            <span class="focus-input3"></span>
                        </div>
                        <div class="wrap-input3 validate-input" data-validate="Password is required">
                            <input class="input3" type="text" name="address" placeholder="Your Address" value="<%=request.getAttribute("address")%>">
                            <span class="focus-input3"></span>
                        </div>



                        <input type="hidden" name="session" value="<%=(String) request.getAttribute("SameUser")%>">


                        <div class="container-contact3-form-btn">
                            <button class="contact3-form-btn">
                                Submit
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            function validateForm() {
                var x = document.forms["myForm"]["session"].value;
                if (x == "SameUser") {
                    alert("-----------Username same-------------" + x);
                    return false;
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
                                            dataLayer.push(arguments);}
                                        gtag('js', new Date());

                                        gtag('config', 'UA-23581568-13');
        </script>


    </body>
</html>
