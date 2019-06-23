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
     <header>

        <div class="super_container">

            <!-- Header -->

            <header class="header">

                <!-- Top Bar -->
                <%
                    String msg;
                    String name;
                    String StatusUser;
                    String msgLogout;
                    String nameLogout;
                    String msgHomestay;
                    String EditHomestay;
                    String hidden;
                    if (session.getAttribute("login") != null) {
                        name = (String) session.getAttribute("login");
                        StatusUser = (String) session.getAttribute("Status");
                        EditHomestay = (String) session.getAttribute("EditHomestay");
                        msg = "ProfileServlet?user=" + name;
                        nameLogout = "Logout";
                        msgLogout = "Logout.jsp";
                        hidden = "";

                    } else {
                        name = "login";
                        msg = "signinform.jsp";
                        nameLogout = "register";
                        msgLogout = "registerform.jsp";
                        StatusUser = "Status";
                        msgHomestay = "";
                        EditHomestay = "";
                        hidden = "hidden";
                    }
                %>
                <div class="top_bar">
                    <div class="container">
                        <div class="row">
                            <div class="col d-flex flex-row">

                                <div class="user_box ml-auto">
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
                                <!--
                                <div class="content_search ml-lg-0 ml-auto">
                                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                  width="17px" height="17px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
                                    <g>
                                      <g>
                                        <g>
                                          <path class="mag_glass" fill="#FFFFFF" d="M78.438,216.78c0,57.906,22.55,112.343,63.493,153.287c40.945,40.944,95.383,63.494,153.287,63.494
                                          s112.344-22.55,153.287-63.494C489.451,329.123,512,274.686,512,216.78c0-57.904-22.549-112.342-63.494-153.286
                                          C407.563,22.549,353.124,0,295.219,0c-57.904,0-112.342,22.549-153.287,63.494C100.988,104.438,78.439,158.876,78.438,216.78z
                                          M119.804,216.78c0-96.725,78.69-175.416,175.415-175.416s175.418,78.691,175.418,175.416
                                          c0,96.725-78.691,175.416-175.416,175.416C198.495,392.195,119.804,313.505,119.804,216.78z"/>
                                        </g>
                                      </g>
                                      <g>
                                        <g>
                                          <path class="mag_glass" fill="#FFFFFF" d="M6.057,505.942c4.038,4.039,9.332,6.058,14.625,6.058s10.587-2.019,14.625-6.058L171.268,369.98
                                          c8.076-8.076,8.076-21.172,0-29.248c-8.076-8.078-21.172-8.078-29.249,0L6.057,476.693
                                          C-2.019,484.77-2.019,497.865,6.057,505.942z"/>
                                        </g>
                                      </g>
                                    </g>
                                  </svg>
                                </div>
                                -->
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
                    <div class="home_title">Edit Homestay</div>
                </div>
            </div>
            <br>

            <div class="container-contact100">
                <div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

                <div class="wrap-contact100">
                    <div class="contact100-form-title" style="background-image: url(images/bg-01.jpg);">
                        <span class="contact100-form-title-1">
                            HomeStay 
                        </span>

                        <span class="contact100-form-title-2">

                        </span>
                    </div>
                    <!--name coordinates address postcode detail province pricing activities-->

                    <form class="contact100-form validate-form" action="EditHomestayServlet" method="post">
                        <div class="wrap-input100">
                            <span class="label-input100">HomeStay Name:</span>
                            <input class="input100" type="text" name="name" value="<%= request.getAttribute("homestayName")%>">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Valid Wide is required: xx">
                            <span class="label-input100">address</span>
                            <input class="input100" type="text" name="address" placeholder="Enter address"value="<%= request.getAttribute("address")%>">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Valid Long is required: xx">
                            <span class="label-input100">postcode</span>
                            <input class="input100" type="text" name="postcode" placeholder="Enter postcode"value="<%= request.getAttribute("postcode")%>">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Guest is required">
                            <span class="label-input100">detail</span>
                            <input class="input100" type="text" name="detail" placeholder="Enter detail"value="<%= request.getAttribute("detail")%>">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Bathroom amount is required">
                            <span class="label-input100">province</span>
                            <input class="input100" type="text" name="province" placeholder="Enter province"value="<%= request.getAttribute("province")%>">
                            <span class="focus-input100"></span>
                        </div>

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
