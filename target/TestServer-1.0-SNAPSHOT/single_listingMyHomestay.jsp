    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html>


<head>
    <title>Room List</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Homestay Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="styles/single_listing_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/single_listing_responsive.css">
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

        <!-- Home -->

        <div class="home">
            <div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/single_background.jpg"></div>
            <div class="home_content">
                <div class="home_title">the offers</div>
            </div>
        </div>

        <!-- Offers -->

        <div class="listing">

            <!-- Search -->
            <div class="offers">

                <!-- Search -->



                <!-- Offers -->

                <!-- Single Listing -->

                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="single_listing">

                                <!-- Hotel Info -->

                                <div class="hotel_info">

                                    <!-- Title -->
                                    <div class="hotel_title_container d-flex flex-lg-row flex-column">
                                        <div class="hotel_title_content">
                                            <h1 class="hotel_title"><%=request.getAttribute("HomeStayName")%> </h1>

                                            <%
                                                String Details = request.getParameter("Detail");
                                                String Address = request.getParameter("Address");
                                                String Detail = "";
                                                String locations = (String) request.getAttribute("Address");
                                                ArrayList<Homestays> roomDetail = (ArrayList<Homestays>) request.getAttribute("homestay");
                                                for (int j = 0; j < roomDetail.size(); j++) {
                                                    if (roomDetail.get(j).getName().equals(request.getParameter(("HomeStayName")))) {
                                                        Detail = roomDetail.get(j).getDetail();
                                                        locations = roomDetail.get(j).getAddress();
                                                    } else {
                                                        Detail = roomDetail.get(j).getDetail();
                                                    }

                                                }

                                            %>

                                            <div class="hotel_location">
                                                <%=locations%></div>
                                        </div>
                                        <div class="hotel_title_button ml-lg-auto text-lg-right">

                                          
                                        </div>
                                    </div>

                                    <!-- Listing Image -->

                                    <div class="hotel_image">
                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>0.jpg" alt="">

                                    </div>

                                    <!-- Hotel Gallery -->

                                    <div class="hotel_gallery">
                                        <div class="hotel_slider_container">
                                            <div class="owl-carousel owl-theme hotel_slider">

                                                <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>1.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>1.jpg" alt="https://unsplash.com/@jbriscoe">
                                                    </a>
                                                </div>

                                                <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>2.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>2.jpg" alt="https://unsplash.com/@grovemade">
                                                    </a>
                                                </div>

                                                <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>3.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>3.jpg" alt="https://unsplash.com/@fransaraco">
                                                    </a>
                                                </div>

                                                <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>4.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>4.jpg" alt="https://unsplash.com/@workweek">
                                                    </a>
                                                </div>

                                                <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="images/<%=request.getAttribute("HomeStayName")%>5.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>5.jpg" alt="https://unsplash.com/@workweek">
                                                    </a>
                                                </div>
                                                <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>6.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>6.jpg" alt="https://unsplash.com/@workweek">
                                                    </a>
                                                </div>   <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>7.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>7.jpg" alt="https://unsplash.com/@workweek">
                                                    </a>
                                                </div>   <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>8.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>8.jpg" alt="https://unsplash.com/@workweek">
                                                    </a>
                                                </div>   <!-- Hotel Gallery Slider Item -->
                                                <div class="owl-item">
                                                    <a class="colorbox cboxElement" href="images/<%=request.getAttribute("HomeStayName")%>9.jpg">
                                                        <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=request.getAttribute("HomeStayName")%>9.jpg" alt="https://unsplash.com/@workweek">
                                                    </a>
                                                </div>

                                            </div>

                                            <!-- Hotel Slider Nav - Prev -->
                                            <div class="hotel_slider_nav hotel_slider_prev">
                                                <svg version="1.1" id="Layer_6" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                     width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                                                <defs>
                                                <linearGradient id='hotel_grad_prev'>
                                                <stop offset='0%' stop-color='#fa9e1b'/>
                                                <stop offset='100%' stop-color='#8d4fff'/>
                                                </linearGradient>
                                                </defs>
                                                <path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
                                                      M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
                                                      C22.545,2,26,5.541,26,9.909V23.091z"/>
                                                <polygon class="nav_arrow" fill="#F3F6F9" points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219 
                                                         11.042,18.219 "/>
                                                </svg>
                                            </div>

                                            <!-- Hotel Slider Nav - Next -->
                                            <div class="hotel_slider_nav hotel_slider_next">
                                                <svg version="1.1" id="Layer_7" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                     width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                                                <defs>
                                                <linearGradient id='hotel_grad_next'>
                                                <stop offset='0%' stop-color='#fa9e1b'/>
                                                <stop offset='100%' stop-color='#8d4fff'/>
                                                </linearGradient>
                                                </defs>
                                                <path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
                                                      M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
                                                      C22.545,2,26,5.541,26,9.909V23.091z"/>
                                                <polygon class="nav_arrow" fill="#F3F6F9" points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554 
                                                         17.046,15.554 "/>
                                                </svg>
                                            </div>

                                        </div>
                                    </div>

                                    <!-- Hotel Info Text -->

                                    <div class="hotel_info_text">
                                        <p><%=request.getAttribute("Detail")%></p>
                                        <p>Contact: <%=request.getAttribute("phone")%></p>
                                    </div>

                                    <!-- Hotel Info Tags -->

                                    <hr>
                                    <div class="button book_button trans_200"><a href="room_homestay_add.jsp?HomeStayName=<%=request.getAttribute("HomeStayName")%>">ADDROOM<span></span><span></span><span></span></a></div>
                                    <div class="button book_button5 trans_200"><a href="HistoryReservationOwnerServlet?HomeStayName=<%=request.getAttribute("HomeStayName")%>">View Reservations<span></span><span></span><span></span></a></div>
                                    <div class="button book_button4 trans_200"><a href="HistoryOwnerServlet?HomeStayName=<%=request.getAttribute("HomeStayName")%>">History<span></span><span></span><span></span></a></div>

                                    <!-- Rooms -->
                                    <%

                                        ArrayList<Rooms> room = (ArrayList<Rooms>) request.getAttribute("r");
                                        for (int i = 0; i < room.size(); i++) {
                                            int k = 1;
                                            int j = k + i;

                                    %>

                                    <div class="rooms">

                                        <!-- Room -->
                                        <div class="room">

                                            <!-- Room -->
                                            <div class="row">
                                                <div class="col-lg-2">
                                                    <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%= room.get(i).getHomestayName()%><%=room.get(i).getRoomName()%>.jpg" alt="https://unsplash.com/@grovemade"></div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="room_content">
                                                        <div class="room_title">Homstay : <%= room.get(i).getHomestayName()%></div>
                                                        <div class="room_text">Room : <%= room.get(i).getRoomName()%></div>
                                                        <div class="room_text">Amount : <%=room.get(i).getBedAmount()%> </div>
                                                        <div class="room_text">Cost : <%=room.get(i).getCost()%></div>
                                                        <div class="room_text">Detail : <%= room.get(i).getDetail()%></div>

                                                    </div>
                                                </div>
                                                <div class="col-lg-3 text-lg-right">
                                                    <div class="room_button">

                                                        <div class="button book_button2 trans_200"><a href="toeditRoomServlet?HomestayName=<%= room.get(i).getHomestayName()%>&Rooms=<%= room.get(i).getRoomName()%>&Phone=<%=request.getAttribute("Phone")%>&Cost=<%= room.get(i).getCost()%>">EDIT<span></span><span></span><span></span></a></div>
                                                        <div class="button book_button3 trans_200"><a id="delete" onclick="return confirm_click();" href="DeleteRoomServlet?HomestayName=<%= room.get(i).getHomestayName()%>&Rooms=<%= room.get(i).getRoomName()%>">DELETE<span></span><span></span><span></span></a></div>
                                                    </div>
                                                </div>
                                            </div>	
                                        </div>

                                        <!-- Room -->

                                        <script type="text/javascript">
                                            function confirm_click()
                                            {
                                                return confirm("Do you want to delete your room?");
                                            }

                                        </script>
                                        <!-- Room -->


                                    </div>
                                    <%}%>                                       

                                    <!-- Reviews -->



                                    <!-- Location on Map -->
                                    <!--
                                    <div class="location_on_map">
                                            <div class="location_on_map_title">location on map</div>
    
                                    <!-- Google Map -->

                                    <!--<div class="homestay_map">
                                            <div id="google_map" class="google_map">
                                                    <div class="map_container">
                                                    
                                                            <div id="map"></div>
                                                    </div>
                                            </div>
                                    </div>
                                    -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>		
            </div>

            <!-- Footer -->

            <!-- Copyright -->

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

        <script>
                                            $(function () {
                                                var today = new Date();
                                                var dd = today.getDate();
                                                var mm = today.getMonth() + 1; //January is 0! 
                                                var yyyy = today.getFullYear();
                                                if (dd < 10) {
                                                    dd = '0' + dd
                                                }
                                                if (mm < 10) {
                                                    mm = '0' + mm
                                                }
                                                var today = dd + '/' + mm + '/' + yyyy;

                                                $('input[name="datetimes"]').daterangepicker({
                                                    minDate: today,
                                                    timePicker: true,
                                                    startDate: moment().startOf('hour'),
                                                    endDate: moment().startOf('hour').add(32, 'hour'),
                                                    locale: {
                                                        format: 'DD/MM/YYYY'
                                                    }
                                                });
                                            });


        </script>

        <!--googlemap Script-->
        <script>
            // This example adds a search box to a map, using the Google Place Autocomplete
            // feature. People can enter geographical searches. The search box will return a
            // pick list containing a mix of places and predicted search terms.

            // This example requires the Places library. Include the libraries=places
            // parameter when you first load the API. For example:
            // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

            //       function initAutocomplete() {

            // // var mapProp= {
            // //     center:new google.maps.LatLng(19.9245609,99.7664285), //coooool
            // //     zoom:15,
            // // };

            // 		var new LatLng = {lat: 19.9245609, lng: 99.7664285};

            //         var map = new google.maps.Map(document.getElementById('map'),{
            //         	center: LatLng
            //         });

            //         // var map = new google.maps.Map(document.getElementById('map'), {
            //         //   center: {lat: -33.8688, lng: 151.2195},
            //         //   zoom: 13,
            //         //   mapTypeId: 'roadmap'
            //         // });

            //         // // Create the search box and link it to the UI element.
            //         // var input = document.getElementById('pac-input');

            //         // var searchBox = new google.maps.places.SearchBox(input);
            //         // map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
            //         // // Bias the SearchBox results towards current map's viewport.
            //         // map.addListener('bounds_changed', function() {
            //         //   searchBox.setBounds(map.getBounds());
            //         // });

            //         var newMarker = new google.maps.Marker({
            //         	position: LatLng
            //         	map: map
            //         })

            //         // var markers = [];
            //         // // Listen for the event fired when the user selects a prediction and retrieve
            //         // // more details for that place.

            //         //   // Clear out the old markers.
            //         //   markers.forEach(function(marker) {
            //         //     marker.setMap(null);
            //         //   });
            //         //   markers = [];

            //         //   // For each place, get the icon, name and location.
            //         //   var bounds = new google.maps.LatLngBounds();
            //         //   places.forEach(function(place) {
            //         //     if (!place.geometry) {
            //         //       console.log("Returned place contains no geometry");
            //         //       return;
            //         //     }
            //         //     var icon = {
            //         //       url: place.icon,
            //         //       size: new google.maps.Size(71, 71),
            //         //       origin: new google.maps.Point(0, 0),
            //         //       anchor: new google.maps.Point(17, 34),
            //         //       scaledSize: new google.maps.Size(25, 25)
            //         //     };

            //         //     // Create a marker for each place.
            //         //     markers.push(new google.maps.Marker({
            //         //       map: map,
            //         //       icon: icon,
            //         //       title: place.name,
            //         //       position: place.geometry.location
            //         //     }));

            //         //     if (place.geometry.viewport) {
            //         //       // Only geocodes have viewport.
            //         //       bounds.union(place.geometry.viewport);
            //         //     } else {
            //         //       bounds.extend(place.geometry.location);
            //         //     }
            //         //   });
            //         //   map.fitBounds(bounds);
            //         // });
            //       }

            // function initMap() {
            // var myLatLng = {lat: 19.9245609, lng: 99.7664285};
            //var myLatLng = {lat: 56, lng: 75};
            // var map = new google.maps.Map(document.getElementById('map'), {
            //      zoom: 4,
            //        center: myLatLng
            //      });
            //        var marker = new google.maps.Marker({
            //  position: myLatLng,
            //    map: map,
            //      title: 'Hello World!'
            //    });
            //  }
            //
        </script>
</body>

</html>