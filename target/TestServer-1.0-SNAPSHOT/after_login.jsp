<!DOCTYPE html>
<html lang="en">
    <head>
        <title>TogetherHomeStay</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">

        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
                                            EditHomestay=(String) session.getAttribute("EditHomestay") ;
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
                                            EditHomestay="";
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
                    <div class="logo menu_logo"><a href="#"><img src="images/" alt=""></a></div>
                    <ul>
                        <li class="menu_item"><a href="#">home</a></li>
                        <li class="menu_item"><a href="about.jsp">about us</a></li>
                        <li class="menu_item"><a href="Home">booking</a></li>
                        <li class="menu_item"><a href="ShowBlogServlet">blog</a></li>
                        <li class="menu_item"><a href="contact.jsp">contact</a></li>
                    </ul>
                </div>
            </div>

            <!-- Home -->

            <div class="home">

                <!-- Home Slider -->

                <div class="home_slider_container">

                    <div class="owl-carousel owl-theme home_slider">

                        <!-- Slider Item -->
                        <div class="owl-item home_slider_item">
                            <!-- Image by https://unsplash.com/@anikindimitry -->
                            <div class="home_slider_background" style="background-image:url(images/slider1.jpg)"></div>

                            <div class="home_slider_content text-center">
                                <div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
                                    <h1></h1>
                                    <h1>H o m e S t a y</h1>
                                    <div class="button home_slider_button"><div class="button_bcg2"></div><a href="#">Visit now<span></span><span></span><span></span></a></div>
                                </div>
                            </div>
                        </div>

                        <!-- Slider Item -->
                        <div class="owl-item home_slider_item">
                            <div class="home_slider_background" style="background-image:url(images/slider2.jpg)"></div>

                            <div class="home_slider_content text-center">
                                <div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
                                    <h1></h1>
                                    <h1>Local Attraction</h1>
                                    <div class="button home_slider_button"><div class="button_bcg2"></div><a href="#">Visit now<span></span><span></span><span></span></a></div>
                                </div>
                            </div>
                        </div>

                        <!-- Slider Item -->
                        <div class="owl-item home_slider_item">
                            <div class="home_slider_background" style="background-image:url(images/slider3.jpg)"></div>

                            <div class="home_slider_content text-center">
                                <div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
                                    <h1></h1>
                                    <h1>Food and Shop</h1>
                                    <div class="button home_slider_button"><div class="button_bcg2"></div><a href="#">Visit now<span></span><span></span><span></span></a></div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Home Slider Nav - Prev -->
                    <div class="home_slider_nav home_slider_prev">
                        <svg version="1.1" id="Layer_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                             width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                        <defs>
                        <linearGradient id='home_grad_prev'>
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

                    <!-- Home Slider Nav - Next -->
                    <div class="home_slider_nav home_slider_next">
                        <svg version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                             width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                        <defs>
                        <linearGradient id='home_grad_next'>
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

                    <!-- Home Slider Dots -->



                </div>

            </div>

            <!-- Search -->

            <di

                <!-- Intro -->

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
                                    <div class="intro_item_background" style="background-image:url(images/intro1.jpg)"></div>
                                    <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                        <div class="button intro_button"><div class="button_bcg"></div><a href="#">view<span></span><span></span><span></span></a></div>
                                        <div class="intro_center text-center">
                                            <h1>Chiang Mai</h1>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Intro Item -->

                            <div class="col-lg-4 intro_col">
                                <div class="intro_item">
                                    <div class="intro_item_overlay"></div>
                                    <!-- Image by https://unsplash.com/@hellolightbulb -->
                                    <div class="intro_item_background" style="background-image:url(images/intro2.jpg)"></div>
                                    <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                        <div class="button intro_button"><div class="button_bcg"></div><a href="#">view<span></span><span></span><span></span></a></div>
                                        <div class="intro_center text-center">
                                            <h1>Chiang rai</h1>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Intro Item -->

                            <div class="col-lg-4 intro_col">
                                <div class="intro_item">
                                    <div class="intro_item_overlay"></div>
                                    <!-- Image by https://unsplash.com/@willianjusten -->
                                    <div class="intro_item_background" style="background-image:url(images/intro3.jpg)"></div>
                                    <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">

                                        <div class="button intro_button"><div class="button_bcg"></div><a href="attraction.jsp">see more<span></span><span></span><span></span></a></div>
                                        <div class="intro_center text-center">
                                            <h1>Others Province</h1>


                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- CTA -->

                <div class="cta">
                    <!-- Image by https://unsplash.com/@thanni -->
                    <div class="cta_background" style="background-image:url(images/cta.jpg)"></div>

                    <div class="container">
                        <div class="row">
                            <div class="col">

                                <!-- CTA Slider -->

                                <div class="cta_slider_container">
                                    <div class="owl-carousel owl-theme cta_slider">

                                        <!-- CTA Slider Item -->
                                        <div class="owl-item cta_item text-center">
                                            <div class="cta_title">promotion1</div>
                                            <div class="rating_r rating_r_4">
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                            </div>
                                            <p class="cta_text">Free Everything.</p>
                                            <div class="button cta_button"><div class="button_bcg"></div><a href="#">book now<span></span><span></span><span></span></a></div>
                                        </div>

                                        <!-- CTA Slider Item -->
                                        <div class="owl-item cta_item text-center">
                                            <div class="cta_title">promotion2</div>
                                            <div class="rating_r rating_r_4">
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                            </div>
                                            <p class="cta_text">extra cost.</p>
                                            <div class="button cta_button"><div class="button_bcg"></div><a href="#">book now<span></span><span></span><span></span></a></div>
                                        </div>

                                        <!-- CTA Slider Item -->
                                        <div class="owl-item cta_item text-center">
                                            <div class="cta_title">promotion3</div>
                                            <div class="rating_r rating_r_4">
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                                <i></i>
                                            </div>
                                            <p class="cta_text">waiting.</p>
                                            <div class="button cta_button"><div class="button_bcg"></div><a href="#">book now<span></span><span></span><span></span></a></div>
                                        </div>

                                    </div>

                                    <!-- CTA Slider Nav - Prev -->
                                    <div class="cta_slider_nav cta_slider_prev">
                                        <svg version="1.1" id="Layer_4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                             width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                                        <defs>
                                        <linearGradient id='cta_grad_prev'>
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

                                    <!-- CTA Slider Nav - Next -->
                                    <div class="cta_slider_nav cta_slider_next">
                                        <svg version="1.1" id="Layer_5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                             width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                                        <defs>
                                        <linearGradient id='cta_grad_next'>
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
                        </div>
                    </div>

                </div>

                <!-- Offers -->

                <div class="offers">
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <h2 class="section_title">room recomendation</h2>
                            </div>
                        </div>
                        <div class="row offers_items">

                            <!-- Offers Item -->
                            <div class="col-lg-6 offers_col">
                                <div class="offers_item">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="offers_image_container">
                                                <!-- Image by https://unsplash.com/@kensuarez -->
                                                <div class="offers_image_background" style="background-image:url(images/offer_1.jpg)"></div>
                                                <div class="offer_name"><a href="#">Easy Room</a></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="offers_content">
                                                <div class="offers_price">150 Baht<span>per night</span></div>
                                                <div class="rating_r rating_r_4 offers_rating">
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                </div>
                                                <p class="offers_text">Comfort and Wide.</p>
                                                <div class="offers_icons">
                                                    <ul class="offers_icons_list">
                                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                                    </ul>
                                                </div>
                                                <div class="offers_link"><a href="Home">read more</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Offers Item -->
                            <div class="col-lg-6 offers_col">
                                <div class="offers_item">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="offers_image_container">
                                                <!-- Image by Egzon Bytyqi -->
                                                <div class="offers_image_background" style="background-image:url(images/offer_2.jpg)"></div>
                                                <div class="offer_name"><a href="#">BoBo Room</a></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="offers_content">
                                                <div class="offers_price">200 Baht<span>per night</span></div>
                                                <div class="rating_r rating_r_4 offers_rating">
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                </div>
                                                <p class="offers_text">lakad matatang normalin normalin.</p>
                                                <div class="offers_icons">
                                                    <ul class="offers_icons_list">
                                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                                    </ul>
                                                </div>
                                                <div class="offers_link"><a href="Home">read more</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Offers Item -->
                            <div class="col-lg-6 offers_col">
                                <div class="offers_item">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="offers_image_container">
                                                <!-- Image by https://unsplash.com/@nevenkrcmarek -->
                                                <div class="offers_image_background" style="background-image:url(images/offer_3.jpg)"></div>
                                                <div class="offer_name"><a href="#">Smurf room</a></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="offers_content">
                                                <div class="offers_price">150 Baht<span>per night</span></div>
                                                <div class="rating_r rating_r_4 offers_rating">
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                </div>
                                                <p class="offers_text">Easist Money of My Life</p>
                                                <div class="offers_icons">
                                                    <ul class="offers_icons_list">
                                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                                    </ul>
                                                </div>
                                                <div class="offers_link"><a href="offers.jsp">read more</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Offers Item -->
                            <div class="col-lg-6 offers_col">
                                <div class="offers_item">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="offers_image_container">
                                                <!-- Image by https://unsplash.com/@mantashesthaven -->
                                                <div class="offers_image_background" style="background-image:url(images/offer_4.jpg)"></div>
                                                <div class="offer_name"><a href="#">GG room</a></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="offers_content">
                                                <div class="offers_price">300 Baht<span>per night</span></div>
                                                <div class="rating_r rating_r_4 offers_rating">
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                    <i></i>
                                                </div>
                                                <p class="offers_text">Echo Slam majamma.</p>
                                                <div class="offers_icons">
                                                    <ul class="offers_icons_list">
                                                        <li class="offers_icons_item"><img src="images/post.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
                                                        <li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
                                                    </ul>
                                                </div>
                                                <div class="offers_link"><a href="offers.jsp">read more</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Testimonials -->

                <div class="testimonials">
                    <div class="test_border"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <h2 class="section_title">Comment and Review</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">

                                <!-- Testimonials Slider -->

                                <div class="test_slider_container">
                                    <div class="owl-carousel owl-theme test_slider">

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img src="images/test1.jpg" alt="https://unsplash.com/@anniegray"></div>
                                                <div class="test_icon"><img src="images/backpack.png" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Bella 1st</div>
                                                            <div class="test_date">May 17, 2018</div>
                                                        </div>
                                                        <div class="test_quote_title">" Best holliday ever "</div>
                                                        <p class="test_quote_text">funny trip with . . ..</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img src="images/test3.jpg" alt="https://unsplash.com/@tschax"></div>
                                                <div class="test_icon"><img src="images/island_t.png" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Bella 2nd</div>
                                                            <div class="test_date">May 17, 2018</div>
                                                        </div>
                                                        <div class="test_quote_title">" Best holliday ever "</div>
                                                        <p class="test_quote_text">funny trip with . . ..</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img src="images/test1.jpg" alt="https://unsplash.com/@seefromthesky"></div>
                                                <div class="test_icon"><img src="images/kayak.png" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Bella 3th</div>
                                                            <div class="test_date">May 17, 2018</div>
                                                        </div>
                                                        <div class="test_quote_title">" Best holliday ever "</div>
                                                        <p class="test_quote_text">funny trip with . . ..</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img src="images/test1.jpg" alt=""></div>
                                                <div class="test_icon"><img src="images/island_t.png" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Bella 4th</div>
                                                            <div class="test_date">May 17, 2018</div>
                                                        </div>
                                                        <div class="test_quote_title">" Best holliday ever "</div>
                                                        <p class="test_quote_text">funny trip with . . ..</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img src="images/test1.jpg" alt=""></div>
                                                <div class="test_icon"><img src="images/backpack.png" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Bella 5th</div>
                                                            <div class="test_date">May 17, 2018</div>
                                                        </div>
                                                        <div class="test_quote_title">" Best holliday ever "</div>
                                                        <p class="test_quote_text">funny trip with . . ..</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img src="images/test1.jpg" alt=""></div>
                                                <div class="test_icon"><img src="images/kayak.png" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Bella 6th</div>
                                                            <div class="test_date">May 24, 2017</div>
                                                        </div>
                                                        <div class="test_date">May 17, 2018</div>
                                                    </div>
                                                    <div class="test_quote_title">" Best holliday ever "</div>
                                                    <p class="test_quote_text">funny trip with . . ..</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <!-- Testimonials Slider Nav - Prev -->
                                <div class="test_slider_nav test_slider_prev">
                                    <svg version="1.1" id="Layer_6" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                         width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                                    <defs>
                                    <linearGradient id='test_grad_prev'>
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

                                <!-- Testimonials Slider Nav - Next -->
                                <div class="test_slider_nav test_slider_next">
                                    <svg version="1.1" id="Layer_7" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                         width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
                                    <defs>
                                    <linearGradient id='test_grad_next'>
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
                    </div>

                </div>
        </div>

        <div class="trending">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <h2 class="section_title">trending now</h2>
                    </div>
                </div>
                <div class="row trending_container">

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_1.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">A homestay</a></div>
                                <div class="trending_price">150 Baht</div>
                                <div class="trending_location">Nakhonpathom, Mueng</div>
                            </div>
                        </div>
                    </div>

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_2.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">B homestay</a></div>
                                <div class="trending_price">100 Baht</div>
                                <div class="trending_location">Nakhonpathom, Sampran</div>
                            </div>
                        </div>
                    </div>

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_3.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">C homestay</a></div>
                                <div class="trending_price">200 Baht</div>
                                <div class="trending_location">Nakhonpathom, Mueng</div>
                            </div>
                        </div>
                    </div>

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_4.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">D homestay</a></div>
                                <div class="trending_price">250 Baht</div>
                                <div class="trending_location">Nakhonpathom, Mueng</div>
                            </div>
                        </div>
                    </div>

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_6.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">E homestay</a></div>
                                <div class="trending_price">250 Baht</div>
                                <div class="trending_location">Nakhonpathom, Mueng</div>
                            </div>
                        </div>
                    </div>

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_6.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">F homestay</a></div>
                                <div class="trending_price">250 Baht</div>
                                <div class="trending_location">Nakhonpathom, Mueng</div>
                            </div>
                        </div>
                    </div>

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_7.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">G homestay</a></div>
                                <div class="trending_price">250 Baht</div>
                                <div class="trending_location">Nakhonpathom, Mueng</div>
                            </div>
                        </div>
                    </div>

                    <!-- Trending Item -->
                    <div class="col-lg-3 col-sm-6">
                        <div class="trending_item clearfix">
                            <div class="trending_image"><img src="images/trend_8.png" alt="https://unsplash.com/@fransaraco"></div>
                            <div class="trending_content">
                                <div class="trending_title"><a href="#">H homestay</a></div>
                                <div class="trending_price">250 Baht</div>
                                <div class="trending_location">Nakhonpathom, Mueng</div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--Later
                <div class="contact">
                        <div class="contact_background" style="background-image:url(images/contact.png)"></div>
        
                        <div class="container">
                                <div class="row">
                                        <div class="col-lg-5">
                                                <div class="contact_image">
                                                        
                                                </div>
                                        </div>
                                        <div class="col-lg-7">
                                                <div class="contact_form_container">
                                                        <div class="contact_title">get in touch</div>
                                                        <form action="#" id="contact_form" class="contact_form">
                                                                <input type="text" id="contact_form_name" class="contact_form_name input_field" placeholder="Name" required="required" data-error="Name is required.">
                                                                <input type="text" id="contact_form_email" class="contact_form_email input_field" placeholder="E-mail" required="required" data-error="Email is required.">
                                                                <input type="text" id="contact_form_subject" class="contact_form_subject input_field" placeholder="Subject" required="required" data-error="Subject is required.">
                                                                <textarea id="contact_form_message" class="text_field contact_form_message" name="message" rows="4" placeholder="Message" required="required" data-error="Please, write us a message."></textarea>
                                                                <button type="submit" id="form_submit_button" class="form_submit_button button">send message<span></span><span></span><span></span></button>
                                                        </form>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        -->
        <!-- Footer -->
        <!--
                <footer class="footer">
                        <div class="container">
                                <div class="row">
        
        <!-- Footer Column -->
        <!--
        <div class="col-lg-3 footer_column">

                <div class="footer_col">
                        <div class="footer_content footer_about">
                                <div class="logo_container footer_logo">
                                        <div class="logo"><a href="#"><img src="images/logo.png" alt="">travelix</a></div>
                                </div>
                                <p class="footer_about_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis vu lputate eros, iaculis consequat nisl. Nunc et suscipit urna. Integer eleme ntum orci eu vehicula pretium.</p>
                                <ul class="footer_social_list">
                                        <li class="footer_social_item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li class="footer_social_item"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                        <li class="footer_social_item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li class="footer_social_item"><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li class="footer_social_item"><a href="#"><i class="fa fa-behance"></i></a></li>
                                </ul>
                        </div>
                </div>
        </div>

        <!-- Footer Column -->
        <!--
        <div class="col-lg-3 footer_column">
                <div class="footer_col">
                        <div class="footer_title">blog posts</div>
                        <div class="footer_content footer_blog">
                                
        <!-- Footer blog item -->
        <!--
        <div class="footer_blog_item clearfix">
                <div class="footer_blog_image"><img src="images/footer_blog_1.jpg" alt="https://unsplash.com/@avidenov"></div>
                <div class="footer_blog_content">
                        <div class="footer_blog_title"><a href="blog.html">Travel with us this year</a></div>
                        <div class="footer_blog_date">Nov 29, 2017</div>
                </div>
        </div>
        
        <!-- Footer blog item -->
        <!--
        <div class="footer_blog_item clearfix">
                <div class="footer_blog_image"><img src="images/footer_blog_2.jpg" alt="https://unsplash.com/@deannaritchie"></div>
                <div class="footer_blog_content">
                        <div class="footer_blog_title"><a href="blog.html">New destinations for you</a></div>
                        <div class="footer_blog_date">Nov 29, 2017</div>
                </div>
        </div>

        <!-- Footer blog item -->
        <!--
        <div class="footer_blog_item clearfix">
                <div class="footer_blog_image"><img src="images/footer_blog_3.jpg" alt="https://unsplash.com/@bergeryap87"></div>
                <div class="footer_blog_content">
                        <div class="footer_blog_title"><a href="blog.html">Travel with us this year</a></div>
                        <div class="footer_blog_date">Nov 29, 2017</div>
                </div>
        </div>

</div>
</div>
</div>

        <!-- Footer Column -->
        <!--
        <div class="col-lg-3 footer_column">
                <div class="footer_col">
                        <div class="footer_title">tags</div>
                        <div class="footer_content footer_tags">
                                <ul class="tags_list clearfix">
                                        <li class="tag_item"><a href="#">design</a></li>
                                        <li class="tag_item"><a href="#">fashion</a></li>
                                        <li class="tag_item"><a href="#">music</a></li>
                                        <li class="tag_item"><a href="#">video</a></li>
                                        <li class="tag_item"><a href="#">party</a></li>
                                        <li class="tag_item"><a href="#">photography</a></li>
                                        <li class="tag_item"><a href="#">adventure</a></li>
                                        <li class="tag_item"><a href="#">travel</a></li>
                                </ul>
                        </div>
                </div>
        </div>

        <!-- Footer Column -->
        <!--
        <div class="col-lg-3 footer_column">
                <div class="footer_col">
                        <div class="footer_title">contact info</div>
                        <div class="footer_content footer_contact">
                                <ul class="contact_info_list">
                                        <li class="contact_info_item d-flex flex-row">
                                                <div><div class="contact_info_icon"><img src="images/placeholder.svg" alt=""></div></div>
                                                <div class="contact_info_text">4127 Raoul Wallenber 45b-c Gibraltar</div>
                                        </li>
                                        <li class="contact_info_item d-flex flex-row">
                                                <div><div class="contact_info_icon"><img src="images/phone-call.svg" alt=""></div></div>
                                                <div class="contact_info_text">2556-808-8613</div>
                                        </li>
                                        <li class="contact_info_item d-flex flex-row">
                                                <div><div class="contact_info_icon"><img src="images/message.svg" alt=""></div></div>
                                                <div class="contact_info_text"><a href="mailto:contactme@gmail.com?Subject=Hello" target="_top">contactme@gmail.com</a></div>
                                        </li>
                                        <li class="contact_info_item d-flex flex-row">
                                                <div><div class="contact_info_icon"><img src="images/planet-earth.svg" alt=""></div></div>
                                                <div class="contact_info_text"><a href="https://colorlib.com">www.colorlib.com</a></div>
                                        </li>
                                </ul>
                        </div>
                </div>
        </div>

</div>
</div>
</footer>

        <!-->


        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 order-lg-1 order-2  ">
                        <div class="copyright_content d-flex flex-row align-items-center">

                        </div>
                    </div>

                    <div class="col-lg-9 order-lg-2 order-1">
                        <div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
                            <div class="footer_nav">
                                <ul class="footer_nav_list">
                                    <li class="footer_nav_item"><a href="#">home</a></li>
                                    <li class="footer_nav_item"><a href="about.jsp">about us</a></li>
                                    <li class="footer_nav_item"><a href="Home">booking</a></li>
                                    <li class="footer_nav_item"><a href="blog.jsp">blog</a></li>
                                    <li class="footer_nav_item"><a href="contact.jsp">others</a></li>
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
    <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="plugins/easing/easing.js"></script>
    <script src="js/custom.js"></script>
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
                    format: 'DD/M hh:mm A'
                }
            });
        });


    </script>
</body>

</html>