<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@page import="java.util.ArrayList"%><!DOCTYPE html>
<html lang="en">
    <head>
        <title>HomeStay Room Adding</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="images/icons/"/> 
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="styles/util.css">
        <link rel="stylesheet" type="text/css" href="styles/room_homestay_add_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/room_homestay_add_styles_responsive.css">

    </head>

    <header class="header">

        <!-- Top Bar -->

        <div class="top_bar">
            <div class="container">
                <div class="row">
                    <div class="col d-flex flex-row">

                        <div class="user_box ml-auto">
                            <%
                                String msg;
                                String name;
                                String StatusUser;
                                String msgLogout;
                                String nameLogout;
                                String msgHomestay;
                                String EditHomestay;

                                if (session.getAttribute("login") != null) {
                                    name = (String) session.getAttribute("login");
                                    StatusUser = (String) session.getAttribute("Status");
                                    EditHomestay = (String) session.getAttribute("EditHomestay");
                                    msg = "ProfileServlet?user=" + name;
                                    nameLogout = "Logout";
                                    msgLogout = "Logout.jsp";

                                } else {
                                    name = "login";
                                    msg = "signinform.jsp";
                                    nameLogout = "register";
                                    msgLogout = "registerform.jsp";
                                    StatusUser = "Status";
                                    msgHomestay = "";
                                    EditHomestay = "";
                                }
                            %>


                            <div class="user_box_login user_box_link"><a href="<%=msg%>"><%=name%> </a></div>
                            <div class="user_box_register user_box_link"><a href="<%=msgLogout%>"><%=nameLogout%></a></div>
                        </div>
                    </div>
                </div>
            </div>		
        </div>


        <!-- Main Navigation -->

        <nav class="main_nav">
            <div class="container">
                <div class="row">
                    <div class="col main_nav_col d-flex flex-row align-items-center justify-content-start">
                        <div class="logo_container">
                            <div class="logo"><a href="Homestay"><img src="images/" alt="">homestay</a></div>
                        </div>
                        <div class="main_nav_container ml-auto">
                            <ul class="main_nav_list">
                                <li class="main_nav_item"><a href="Homestay">home</a></li>
                                <li class="main_nav_item"><a href="attraction.jsp">attraction</a></li>
                                <li class="main_nav_item"><a href="Home">booking</a></li>
                                <li class="main_nav_item"><a href="ShowBlogServlet">blog</a></li>
                                <li class="main_nav_item"><a href="MyHomestayServlet"><%=EditHomestay%></a></li>


                            </ul>
                        </div>

                        <form id="search_form" class="search_form bez_1">
                            <input type="search" class="search_content_input bez_1">
                        </form>

                        <div class="hamburger">
                            <i class="fa fa-bars trans_200"></i>
                        </div>
                    </div>
                </div>
            </div>	
        </nav>

    </header>
    <body>
        <div class="menu trans_500">
            <div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
                <div class="menu_close_container"><div class="menu_close"></div></div>
                <div class="logo menu_logo"><a href="#"><img src="images/" alt=""></a></div>
                <ul>
                    <li class="menu_item"><a href="<%=msg%>"><%=name%> </a></li>
                        <li class="menu_item"><a href="<%=msgLogout%>"><%=nameLogout%></a></li>
                        <li class="menu_item"><a href="Homestay">home</a></li>
                        <li class="menu_item"><a href="attraction.jsp">attraction</a></li>
                        <li class="menu_item"><a href="Home">booking</a></li>
                        <li class="menu_item"><a href="ShowBlogServlet">blog</a></li>
                        <li class="menu_item"><a href="MyHomestayServlet"><%=EditHomestay%></a></li>
                </ul>
            </div>
        </div>
        <div class="home">
            <div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/about_background.jpg"></div>
            <div class="home_content">
                <div class="home_title">homestay room  add</div>
            </div>
        </div>
        <br>

        <div class="container-contact100">
            <div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

            <div class="wrap-contact100">
                <div class="contact100-form-title" style="background-image: url(images/bg-01.jpg);">
                    <span class="contact100-form-title-1">
                        HomeStay Room
                    </span>

                    <span class="contact100-form-title-2">

                    </span>
                </div>
                <!--name coordinates address postcode detail province pricing activities-->

                <form class="contact100-form validate-form" action="AddHomestayServlet" method="post">
                    <div class="wrap-input100">
                        <span class="label-input100">HomeStay Name:</span>
                        <input class="input100" type="text" name="name">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Valid Wide is required: xx">
                        <span class="label-input100">address</span>
                        <input class="input100" type="text" name="address" placeholder="Enter address">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Valid Long is required: xx">
                        <span class="label-input100">postcode</span>
                        <input class="input100" type="number" name="postcode" placeholder="Enter postcode">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Guest is required">
                        <span class="label-input100">detail</span>
                        <input class="input100" type="text" name="detail" placeholder="Enter detail">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Bathroom amount is required">
                        <span class="label-input100">province</span>
                        <input class="input100" type="text" name="province" placeholder="Enter province">
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Bathroom amount is required">
                        <span class="label-input100">phoneNo.</span>
                        <input class="input100" type="number" name="phone" placeholder="Enter phone">
                        <span class="focus-input100"></span>
                    </div>
                    <input class="input100" type="hidden" name="idname" value="<%=session.getAttribute("login")%>">
                    <div class="container-contact100-form-btn">

                        <button class="contact100-form-btn">
                            <span>
                                Submit
                                <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                            </span>
                        </button>

                    </div>
                </form>
            </div>
        </div>



        <div id="dropDownSelect1"></div>

        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/homestay_add_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/homestay_add_styles_responsive.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="plugins/parallax-js-master/parallax.min.js"></script>
        <script src="plugins/colorbox/jquery.colorbox-min.js"></script>
        <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="js/single_listing_custom.js"></script>
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2WZkkoXh44w8kYdgLsJTnu05s1uaTiz0&libraries=geometry,places"></script>
        <script src="js/map-custom.js"></script>
        <script src="js/homeadd.js"></script>
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>
        <script >
            $(document).ready(function () {
                //called when key is pressed in textbox
                $("#quantity").keypress(function (e) {

                    var maxlengthNumber = parseInt($('#quantity').attr('maxlength'));
                    var inputValueLength = $('#quantity').val().length + 1;
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {

                        return false;
                    }
                    if (maxlengthNumber < inputValueLength) {
                        return false;
                    }
                });
            });
        </script>

    </body>
    <br>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-lg-1 order-2  ">
                    <div class="copyright_content d-flex flex-row align-items-center">

                    </div>
                </div>
                <!--name coordinates address postcode detail province pricing activities-->


                <div class="col-lg-9 order-lg-2 order-1">
                    <div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
                        <div class="footer_nav">
                            <ul class="footer_nav_list">
                                <li class="main_nav_item"><a href="Homestay">home</a></li>
                                <li class="main_nav_item"><a href="attraction.jsp">attraction</a></li>
                                <li class="main_nav_item"><a href="Home">booking</a></li>
                                <li class="main_nav_item"><a href="ShowBlogServlet">blog</a></li>
                                <li class="main_nav_item"><a href="MyHomestayServlet"><%=EditHomestay%></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>
