<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Attraction</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Homestay Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/attraction_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/single_listing_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
    </head>
    <body>
        <div class="super_container">

            <!-- Header -->

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

            <div class="menu trans_500">
                <div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="menu_close_container"><div class="menu_close"></div></div>
                    <div class="logo menu_logo"><a href="#"><img src="images/.png" alt=""></a></div>
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
                <div class="home_background parallax-window" data-parallax="scroll" data-image-src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/single_background.jpg"></div>
                <div class="home_content">
                    <div class="home_title">attraction</div>
                </div>
            </div>
            <div class="intro">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h2 class="intro_title text-center">Attraction</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10 offset-lg-1">
                            <div class="intro_text text-center">
                                <p>best holiday by best attraction</p>
                            </div>
                        </div>
                    </div>
                    <div class="row intro_items">

                        <!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@dnevozhai -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro1.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="cm_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>เชียงใหม่</h1>


                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@hellolightbulb -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro2.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="cr_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>เชียงราย</h1>


                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@willianjusten -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro4.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="mhs_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>แม่ฮ่องสอน</h1>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@willianjusten -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro5.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="lp_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>ลำพูน</h1>


                                    </div>
                                </div>
                            </div>
                        </div><!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@willianjusten -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro6.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="lpa_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>ลำปาง</h1>


                                    </div>
                                </div>
                            </div>
                        </div><!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@willianjusten -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro7.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="utd_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>อุตรดิตถ์</h1>


                                    </div>
                                </div>
                            </div>
                        </div><!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@willianjusten -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro8.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="ph_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>แพร่</h1>


                                    </div>
                                </div>
                            </div>
                        </div><!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@willianjusten -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro9.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="nn_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>น่าน</h1>


                                    </div>
                                </div>
                            </div>
                        </div><!-- Intro Item -->

                        <div class="col-lg-4 intro_col">
                            <div class="intro_item">
                                <div class="intro_item_overlay"></div>
                                <!-- Image by https://unsplash.com/@willianjusten -->
                                <div class="intro_item_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/intro10.jpg)"></div>
                                <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                    <div class="button intro_button"><div class="button_bcg"></div><a href="py_province_detail.jsp">view<span></span><span></span><span></span></a></div>
                                    <div class="intro_center text-center">
                                        <h1>พะเยา</h1>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>



            <script src="js/jquery-3.2.1.min.js"></script>
            <script src="styles/bootstrap4/popper.js"></script>
            <script src="styles/bootstrap4/bootstrap.min.js"></script>
            <script src="plugins/easing/easing.js"></script>
            <script src="plugins/parallax-js-master/parallax.min.js"></script>
            <script src="plugins/colorbox/jquery.colorbox-min.js"></script>
            <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2WZkkoXh44w8kYdgLsJTnu05s1uaTiz0&libraries=geometry,places&callback=initMap"
            async defer></script>


            <script src="js/single_listing_custom.js"></script>
            <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
            <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
            <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />



    </body>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-lg-1 order-2  ">
                    <div class="copyright_content d-flex flex-row align-items-center">
                        <div><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                    </div>
                </div>
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

