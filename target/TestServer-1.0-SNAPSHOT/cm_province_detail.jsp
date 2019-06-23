<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<head>
    <title>Province Detail</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <link rel="stylesheet" type="text/css" href="styles/province_detail.css">
    <link rel="stylesheet" type="text/css" href="styles/province_detail_responsive.css">
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
            <div class="home_background parallax-window" data-parallax="scroll" data-image-src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/province_detail.jpg"></div>
            <div class="home_content">
                <div class="home_title">Province Detail</div>
            </div>
        </div>

        <!-- Offers -->

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
                                    <h1 class="hotel_title">เฃียงใหม่</h1>


                                </div>
                                <div class="hotel_title_button ml-lg-auto text-lg-right">


                                </div>
                            </div>

                            <!-- Listing Image -->

                            <div class="hotel_image">
                                <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/bigcm.jpg" alt="">
                                <!--	<div class="hotel_review_container d-flex flex-column align-items-center justify-content-center">
                                                <div class="hotel_review">
                                                        <div class="hotel_review_content">
                                                                <div class="hotel_review_title">very good</div>
                                                                <div class="hotel_review_subtitle">100 reviews</div>
                                                        </div>
                                                        <div class="hotel_review_rating text-center">8.1</div>
                                                </div>
                                        </div>
                                </div>

                                <!-- Hotel Gallery -->

                                <div class="hotel_gallery">
                                    <div class="hotel_slider_container">
                                        <div class="owl-carousel owl-theme hotel_slider">

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm1.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm1.jpg" alt="https://unsplash.com/@jbriscoe">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm2.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm2.jpg" alt="https://unsplash.com/@grovemade">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm3.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm3.jpg" alt="https://unsplash.com/@fransaraco">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm4.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm4.jpg" alt="https://unsplash.com/@workweek">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm5.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm5.jpg" alt="https://unsplash.com/@workweek">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm6.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm6.jpg" alt="https://unsplash.com/@avidenov">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm7.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm7.jpg" alt="https://unsplash.com/@pietruszka">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm8.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm8.jpg" alt="https://unsplash.com/@rktkn">
                                                </a>
                                            </div>

                                            <!-- Hotel Gallery Slider Item -->
                                            <div class="owl-item">
                                                <a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm9.jpg">
                                                    <img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cm9.jpg" alt="https://unsplash.com/@mindaugas">
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
                                    <p>จังหวัดเชียงใหม่ (คำเมือง: Lanna-Chiang Mai.png เจียงใหม่) เป็นจังหวัดหนึ่งทางภาคเหนือของประเทศไทยเป็นจังหวัดที่ใหญ่เป็นอันดับ 3 ของไทย ครอบคลุมพื้นที่ประมาณ 20,107 ตารางกิโลเมตร ซึ่งใหญ่เป็นอันดับ 2 ของประเทศ มีประชากร 1,746,840 คน มากเป็นอันดับ 5 ของประเทศ ในจำนวนนี้เป็นประชากรที่อาศัยอยู่ในเขตเมืองและชานเมือง 960,906 คน โดยจังหวัดเชียงใหม่ทิศเหนือติดต่อกับรัฐฉานของเมียนมา

จังหวัดเชียงใหม่มีเขตเมืองที่จัดเป็นเมืองใหญ่อันดับที่สองของประเทศไทยรองจากกรุงเทพมหานคร มีประชากรในเขตเมืองและชานเมือง 960,906 คน (พ.ศ. 2553) จังหวัดเชียงใหม่แบ่งการปกครองออกเป็น 25 อำเภอ โดยมีอำเภอเมืองเชียงใหม่เป็นศูนย์กลางของจังหวัด เมื่อ พ.ศ. 2552 มีการจัดตั้งอำเภอกัลยาณิวัฒนาเป็นอำเภอลำดับที่ 25 ของจังหวัด และลำดับที่ 878 ของประเทศ ซึ่งเป็นอำเภอล่าสุดของไทย

จังหวัดเชียงใหม่มีประวัติศาสตร์อันยาวนาน เคยเป็นเมืองหลวงของอาณาจักรล้านนาแต่โบราณ มี "คำเมือง" เป็นภาษาท้องถิ่น มีเอกลักษณ์เฉพาะตัวทั้งด้านประเพณีวัฒนธรรม และมีแหล่งท่องเที่ยวจำนวนมาก โดยเริ่มวางตัวเป็นนครสร้างสรรค์ และได้รับการประกาศเป็นเมืองสร้างสรรค์ของโลกทางด้านหัตถกรรมและศิลปะพื้นบ้าน เมื่อปี พ.ศ. 2560 ปัจจุบันกำลังพิจารณาสมัครเมืองมรดกโลกจากองค์การยูเนสโก เชียงใหม่ยังถือเป็นศูนย์กลางด้านดาราศาสตร์ของเอเชียตะวันออกเฉียงใต้ โดยเป็นที่ตั้งของหอดูดาวแห่งชาติและอุทยานดาราศาสตร์แห่งชาติ</p>
                                </div>

                                <!-- Hotel Info Tags -->



                            </div>

                            <!-- Rooms -->
                            <h1 class="hotel_title" >Attraction Review</h1>
                            <div class="rooms">

                                <!-- Room -->
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm1.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">ขุนช่างเคี่ยน</div>
                                                <p>สถานที่ชมดอกนางพญาเสือโคร่ง สีชมพูสดใส มีอยู่หลายที่ด้วยกัน ขุนช่างเคี่ยน หรือสถานีวิจัยและศูนย์ฝึกอบรมเกษตรที่สูงขุนช่างเคี่ยน เป็นสถานที่เที่ยวชมดอกนางพญาเสือโคร่งยอดฮิตของภาคเหนือ โดยจะบานสะพรั่งในช่วงเดือน ธ.ค.-ม.ค. ตั้งอยู่บนเส้นทางเดียวกับทางขึ้นวัดพระธาตุดอยสุเทพ พระตำหนักภูพิงค์ราชนิเวศน์ และดอยปุย </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>

                                <!-- Room -->
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm2.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">ดอยอ่างขาง </div>
                                                <p>สถานีเกษตรหลวงอ่างขาง โครงการหลวงที่ได้รับความนิยม เลื่องชื่อเรื่องพืชพันธุ์ โดดเด่นด้วยนางพญาเสือโคร่ง เต็มเปี่ยมไปด้วยเรื่องราวและทัศนียภาพอันสวยงาม เป็นสถานีวิจัยแห่งแรกของโครงการหลวง ตั้งอยู่บนเทือกเขาตะนาวศรี ตำบลแม่งอน อำเภอฝาง จังหวัดเชียงใหม่ ปัจจุบันมีพันธุ์ไม้ผลกว่า 12 ชนิด ผักเมืองหนาวกว่า 60 ชนิด และไม้ดอกเมืองหนาวมากกว่า 20 ชนิด สภาพอากาศเย็นสบายตลอดทั้งปี </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm3.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">สถานีวิจัยเกษตรที่สูงเชียงใหม่(ขุนวาง)</div>
                                                <p>โครงการหลวงแห่งนี้เป็นอีกหนึ่งสถานที่ชมนางพญาเสือโคร่ง สภาพพื้นที่ของโครงการส่วนใหญ่ล้อมด้วยเทือกเขาสลับซับซ้อน มีแอ่งที่ราบระหว่างภูเขาเพียงเล็กน้อย มีแม่น้ำสายสำคัญที่ไหลผ่านคือ แม่น้ำขุนวาง  ประชากรในพื้นที่เป็นชาวเขาเผ่ากะเหรี่ยงและม้ง รวมทั้งสิ้น 7 หมู่บ้าน ขึ้นอยู่กับตำบลแม่วิน อำเภอแม่วาง จังหวัดเชียงใหม่</p>

                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm4.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">แม่กำปอง </div>
                                                <p>ช่วงหลังมานี้ หมู่บ้านเล็กท่ามกลางหุบเขาอย่าง แม่กำปอง ได้รับความนิยมจากนักท่องเที่ยวเป็นจำนวนมาก เป็นสถานที่ท่องเที่ยวเชิงอนุรักษ์แบบโฮมสเตย์ และด้วยความที่มีธรรมชาติแสนงดงามแบบไม่ต้องปรุงแต่ง ความน่ารักจากผู้คนในหมู่บ้าน ได้สัมผัสวิถีชาวบ้าน ทำให้ที่แห่งนี้จึงเป็นจุดมุ่งหมายที่ใครหลายคนก็อยากมาสัมผัส </p>

                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm5.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <<div class="room_title">ไร่ชา </div>
                                                <p>อีกหนึ่งสถานที่ที่เป็นแหล่งท่องเที่ยวยอดนิยม ก็คงจะเป็น “ไร่ชา” ในเมืองไทยนั้นมีไร่ชาขึ้นชื่อหลายที่ และแต่ละที่นั้นนอกจากจะได้ถ่ายรูปไร่ชาทอดยาวตามขั้นบันไดแล้ว ก็สามารถชิมชากลิ่นหอมๆ ได้อีกด้วย ซึ่งไร่ชาในจังหวัดเชียงใหม่นั้นมีอยู่หลายที่ เช่นี ไร่ชาลุงเดช </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm6.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">ขุนแม่ยะ </div>
                                                <p>หนึ่งใน ดินแดนแห่งดอกซากุระเมืองไทย ณ ดอยขุนแม่ยะ อยู่บนเส้นทางแม่มาลัย-ห้วยน้ำดัง-ปายกึ่งกลาง เป็นดอยสูงจากระดับน้ำทะเลประมาณ 2,020 เมตร เป็นพื้นที่บริเวณหน่วยจัดการต้นน้ำขุนแม่ยะ โครงการในพระราชดำริของสมเด็จพระนางพระบรมราชินีนาถฯ ทางเข้าอยู่ตรงข้ามกับด่านตรวจสัตว์ของตำรวจ</p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm7.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">อุทยานแห่งชาติดอยอินทนนท์ </div>
                                                <p>ดอยอินทนนท์ ยอดเขาที่สูงที่สุดในประเทศไทย เพราะจะขึ้นเหนือทั้งทีต้องไปให้สุด ถือเป็นอีกหนึ่งแลนด์มาร์คสำคัญในจังหวัดเชียงใหม่  นอกจากจะไปถ่ายกับป้ายสูงสุดแดนสยามแล้ว ยังมีจุดชมทะเลหมอกที่สวยงาม หรือจะเดินชมความเขียวขจีของผืนป่า ในเส้นทางศึกษาธรรมชาติกิ่วแม่ปาน และอ่างกา ที่ชวงนี้เปิดให้เข้าไปเดินเล่นในทุ่งหญ้า สูดอากาศรับลมหนาวอย่างเต็มที่</p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm9.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">พระธาตุดอยสุเทพ </div>
                                                <p>เป็นหนึ่งในวัดที่มีความสำคัญมากที่สุดของจังหวัดเชียงใหม่ ก่อสร้างตามแบบศิลปะล้านนา มีเจดีย์ทรงเชียงแสน ฐานสูงย่อมุมระฆังทรงแปดเหลี่ยมปิดด้วยทองจังโก 2 ชั้น ลานเจดีย์เป็นจุดชมทิวทัศน์เมืองเชียงใหม่ ทางขึ้นเป็นบันไดนาคเจ็ดเศียรก่อปูน </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm8.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">อ่างกา </div>
                                                <p>เส้นทางศึกษาธรรมชาติอ่างกา หรือ อ่างกาหลวง ดอยดินทนนท์ จ.เชียงใหม่ แหล่งท่องเที่ยวที่เต็มไปด้วยพืชนานาพันธุ์ ภายในมีสะพานไม้ให้เดินระยะทางเกือบ 300 เมตร ถึงจะเป็นเส้นทางสั้น ๆ แต่ก็แฝงไปด้วยความสวยงามปนกับความพิศวง ให้อารมณ์ป่าฝน อากาศเย็นสบาย เหล่าบรรดามอส ไล่ขึ้นตามขอบและราวจับของสะพาน เป็นจุดถ่ายรูปที่น่าสนใจมากทีเดียว และหากมีฝนตกปรอย ๆ บอกเลยว่ายิ่งงดงามมาก </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm10.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">ดอยม่อนจอง</div>
                                                <p>ดอยม่อนจอง ตั้งอยู่ในเขตลึกของป่าอมก๋อย ทิศตะวันออกจรดเขื่อนภูมิพล ทิศตะวันตกติดกับถนนสายอมก๋อย-บ้านแม่ตื่น ทิศเหนือจรดกับพื้นที่อำเภอดอยเต่า ทิศใต้จรดกับลำห้วยแม่ตื่นที่ไหลลงสู่เขื่อนภูมิพล สูงติดอันดับ 1 ใน 10 ของยอดดอยที่สูงที่สุดในประเทศไทย จุดสูงสุดของ ดอยม่อนจอง เรียกว่า หัวสิงห์ เพราะมีลักษณะคล้ายหัวสิงโต

                                                    ยิ่งในช่วงฤดูหนาว ต้นกุหลาบพันปีจะออกดอกสีแดงสะพรั่งดึงดูดนกสวยงามนานาชนิดให้มาลิ้มรสน้ำหวาน กลายเป็นของแถมให้นักท่องเที่ยวได้เพลิดตาเพลินใจไม่น้อย </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm11.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">ดอยอ่างขาง </div>
                                                <p>สถานีเกษตรหลวงอ่างขาง โครงการหลวงที่ได้รับความนิยม เลื่องชื่อเรื่องพืชพันธุ์ โดดเด่นด้วยนางพญาเสือโคร่ง เต็มเปี่ยมไปด้วยเรื่องราวและทัศนียภาพอันสวยงาม เป็นสถานีวิจัยแห่งแรกของโครงการหลวง ตั้งอยู่บนเทือกเขาตะนาวศรี ตำบลแม่งอน อำเภอฝาง จังหวัดเชียงใหม่ ปัจจุบันมีพันธุ์ไม้ผลกว่า 12 ชนิด ผักเมืองหนาวกว่า 60 ชนิด และไม้ดอกเมืองหนาวมากกว่า 20 ชนิด สภาพอากาศเย็นสบายตลอดทั้งปี </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>
                                <div class="room">

                                    <!-- Room -->
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cm12.jpg" alt="https://unsplash.com/@grovemade"></div>
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="room_content">
                                                <div class="room_title">อุทยานแห่งชาติออบหลวง </div>
                                                <p>ก็เป็นอีกแห่งที่น่าสนใจ และยังไม่เป็นที่รู้จักในวงกว้างมากนัก เต็มไปด้วยความสมบูรณ์ของธรรมชาติ คุณจะได้เห็นทัศนียภาพอันแปลกตา ของภูผา ป่าไม้ สายน้ำ และร่องรอยทางประวัติศาสตร์ในที่เดียวกัน </p>
                                            </div>
                                        </div>

                                    </div>	
                                </div>




                            </div>




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
								<li class="footer_nav_item"><a href="Homestay"">home</a></li>
								<li class="footer_nav_item"><a href="about.html">attraction</a></li>
								<li class="footer_nav_item"><a href="Home">booking</a></li>
								<li class="footer_nav_item"><a href="ShowBlogServlet">blog</a></li>
								<li class="footer_nav_item"><a href="MyHomestayServletl"><%=EditHomestay%></a></li>
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
                format: 'DD/M hh:mm A'
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