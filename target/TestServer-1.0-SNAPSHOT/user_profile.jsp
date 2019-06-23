<%@page import="Model.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
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


    </head>

    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: green;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            padding: 12px 16px;
            z-index: 1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }


        .card {
            padding-top: 20px;
            margin: 10px 0 20px 0;
            background-color: rgba(214, 224, 226, 0.2);
            border-top-width: 0;
            border-bottom-width: 2px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .card .card-heading {
            padding: 0 20px;
            margin: 0;
        }

        .card .card-heading.simple {
            font-size: 20 px;
            font-weight: 300;
            color: #777;
            border-bottom: 1px solid #e5e5e5;
        }

        .card .card-heading.image img {
            display: inline-block;
            width: 46px;
            height: 46px;
            margin-right: 15px;
            vertical-align: top;
            border: 0;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
        }

        .card .card-heading.image .card-heading-header {
            display: inline-block;
            vertical-align: top;
        }

        .card .card-heading.image .card-heading-header h3 {
            margin: 0;
            font-size: 14px;
            line-height: 16px;
            color: #262626;
        }

        .card .card-heading.image .card-heading-header span {
            font-size: 12px;
            color: #999999;
        }

        .card .card-body {
            padding: 0 20px;
            margin-top: 20px;
        }

        .card .card-media {
            padding: 0 20px;
            margin: 0 -14px;
        }

        .card .card-media img {
            max-width: 100%;
            max-height: 100%;
        }

        .card .card-actions {
            min-height: 30px;
            padding: 0 20px 20px 20px;
            margin: 20px 0 0 0;
        }

        .card .card-comments {
            padding: 20px;
            margin: 0;
            background-color: #f8f8f8;
        }

        .card .card-comments .comments-collapse-toggle {
            padding: 0;
            margin: 0 20px 12px 20px;
        }

        .card .card-comments .comments-collapse-toggle a,
        .card .card-comments .comments-collapse-toggle span {
            padding-right: 5px;
            overflow: hidden;
            font-size: 12px;
            color: #999;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .card-comments .media-heading {
            font-size: 13px;
            font-weight: bold;
        }

        .card.people {
            position: relative;
            display: inline-block;
            width: 170px;
            height: 300px;
            padding-top: 0;
            margin-left: 20px;
            overflow: hidden;
            vertical-align: top;
        }

        .card.people:first-child {
            margin-left: 0;
        }

        .card.people .card-top {
            position: absolute;
            top: 0;
            left: 0;
            display: inline-block;
            width: 170px;
            height: 150px;
            background-color: #ffffff;
        }

        .card.people .card-top.green {
            background-color: #53a93f;
        }

        .card.people .card-top.blue {
            background-color: #427fed;
        }

        .card.people .card-info {
            position: absolute;
            top: 150px;
            display: inline-block;
            width: 100%;
            height: 101px;
            overflow: hidden;
            background: #ffffff;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .card.people .card-info .title {
            display: block;
            margin: 8px 14px 0 14px;
            overflow: hidden;
            font-size: 16px;
            font-weight: bold;
            line-height: 18px;
            color: #404040;
        }

        .card.people .card-info .desc {
            display: block;
            margin: 8px 14px 0 14px;
            overflow: hidden;
            font-size: 12px;
            line-height: 16px;
            color: #737373;
            text-overflow: ellipsis;
        }

        .card.people .card-bottom {
            position: absolute;
            bottom: 0;
            left: 0;
            display: inline-block;
            width: 100%;
            padding: 10px 20px;
            line-height: 29px;
            text-align: center;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .card.hovercard {
            position: relative;
            padding-top: 0;
            overflow: hidden;
            text-align: center;
            background-color: rgba(214, 224, 226, 0.2);
        }

        .card.hovercard .cardheader {
            background: url("https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/about_background.jpg");
            background-size: cover;
            height: 135px;
        }

        .card.hovercard .avatar {
            position: relative;
            top: -50px;
            margin-bottom: -50px;
        }

        .card.hovercard .avatar img {
            width: 150px;
            height: 150px;
            max-width: 300px;
            max-height: 300px;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            border: 5px solid rgba(255,255,255,0.5);
        }

        .card.hovercard .info {
            padding: 4px 8px 10px;
        }

        .card.hovercard .info .title {
            margin-bottom: 4px;
            font-size: 24px;
            line-height: 1;
            color: #262626;
            vertical-align: middle;
        }

        .card.hovercard .info .desc {
            overflow: hidden;
            font-size: 12px;
            line-height: 20px;
            color: #737373;
            text-overflow: ellipsis;
        }

        .card.hovercard .bottom {
            padding: 0 20px;
            margin-bottom: 17px;
        }

        .btn{ border-radius: 50%; width:32px; height:32px; line-height:18px;  }

    </style>

    <header>
        <header class="header">

            <!-- Top Bar -->

            <div class="top_bar">
                <div class="container">
                    <div class="row">
                        <div class="col d-flex flex-row">

                            <div class="user_box ml-auto">
                                <div class="user_box_login user_box_link"> 
                                    <div class="dropdown">
                                        <span class="user_box_login user_box_link" style="color: white"><%=session.getAttribute("login")%></span>
                                        <div class="dropdown-content">
                                            <a href="ProfileServlet?user=<%=session.getAttribute("login")%>" class="active">profile</a>
                                            <a href="toEditProfileServlet?user=<%=session.getAttribute("login")%>&status=<%=session.getAttribute("Status")%>">edit profile</a>
                                            <a href="HistoryUserServlet?idName=<%=session.getAttribute("login")%>">history</a>
                                        </div>
                                    </div></div>
                                <div class="user_box_register user_box_link"><a href="Logout.jsp">logout</a></div>
                            </div>
                        </div>
                    </div>
                </div>		
            </div>
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
                    <div class="logo menu_logo"><a href="Homestay"><img src="images/" alt=""></a></div>
                    <ul>
                        <li class="menu_item"> <a href="ProfileServlet?user=<%=session.getAttribute("login")%>" class="active">profile</a></li>
                        <li class="menu_item"> <a href="toEditProfileServlet?user=<%=session.getAttribute("login")%>&status=<%=session.getAttribute("Status")%>">edit profile</a></li>
                        <li class="menu_item">  <a href="HistoryUserServlet?idName=<%=session.getAttribute("login")%>">history</a></li>
                        <li class="menu_item"><a href="Homestay">home</a></li>
                        <li class="menu_item"><a href="attraction.jsp">attraction</a></li>
                        <li class="menu_item"><a href="Home">booking</a></li>
                        <li class="menu_item"><a href="ShowBlogServlet">blog</a></li>

                    </ul>
                </div>
            </div>
            <div class="home">
                <div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/about_background.jpg"></div>
                <div class="home_content">
                    <div class="home_title">profile</div>
                </div>
            </div>


            <%

                ArrayList<Users> user = (ArrayList<Users>) request.getAttribute("r");
                for (int i = 0; i < user.size(); i++) {


            %>
            <div class="card hovercard">
                <div class="cardheader">

                </div>
                <div class="avatar">
                    <img alt="" src="https://togetherpic.s3.amazonaws.com/images/<%=request.getAttribute("user")%>0.jpg">
                </div>
                <div class="info">
                    <div class="title">
                        <h2 style="color:darkgreen;"><%= user.get(i).getUsername()%></h2><div style="margin-bottom: 15px;"></div>
                    </div>
                    <h4 style="color: green;">FirstName : <%= user.get(i).getFirstName()%><div style="margin-bottom: 10px;"></div>
                        <h4 style="color: green;">LastName : <%= user.get(i).getLastname()%><div style="margin-bottom: 10px;"></div>
                            <h4 style="color: green;">Status : <%= user.get(i).getStatus()%><div style="margin-bottom: 10px;"></div>
                                <h4 style="color: green;">Phone : <%= user.get(i).getPhone()%><div style="margin-bottom: 10px;"></div>
                                    <h4 style="color: green;">Address : <%= user.get(i).getAddress()%>



                                        </div>
                                        <hr>

                                        </div>
                                        <%}%>




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
                                                                    <li class="footer_nav_item"><a href="Homestay">home</a></li>
                                                                    <li class="footer_nav_item"><a href="attraction.jsp">attraction</a></li>
                                                                    <li class="footer_nav_item"><a href="Home">booking</a></li>
                                                                    <li class="footer_nav_item"><a href="ShowBlogServlet">blog</a></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </html>
