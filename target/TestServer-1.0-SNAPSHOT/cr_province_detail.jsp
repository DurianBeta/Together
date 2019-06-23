<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html lang="en">
<head>
<title>Province Detail</title>
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
									<h1 class="hotel_title">เชียงราย</h1>
									
								
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									
									
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr_province_detail.jpg" alt="">
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
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr1.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr2.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr3.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr4.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr5.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr6.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr7.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr8.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr9.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/cr9.jpg" alt="https://unsplash.com/@mindaugas">
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
                                                            <p>
                                                                จังหวัดเชียงราย (คำเมือง: Lanna-Chiang Rai.png เจียงฮาย; พม่า: Burmese-Chiang Rai.png) เป็นจังหวัดที่ตั้งอยู่ในภาคเหนือตอนบนของประเทศไทย มีภูมิศาสตร์อยู่ทางเหนือสุดของประเทศ ที่ตั้งของเมืองมีความสำคัญทางประวัติศาสตร์ตั้งแต่ยุคก่อตั้งอาณาจักรล้านนา เช่น เมืองเงินยาง เมืองเชียงแสน เมืองเชียงราย[3] เมืองเชียงรายเป็นพื้นที่ดั้งเดิมของชาวไทยวน ปัจจุบันจังหวัดเชียงรายแบ่งการปกครองออกเป็น 18 อำเภอ มีน้ำแม่กก น้ำแม่อิง แม่น้ำรวก และแม่น้ำโขง เป็นแม่น้ำสายสำคัญ ทำเลที่ตั้งของจังหวัดเชียงรายอยู่บริเวณรอยต่อระหว่าง 3 ประเทศ คือ ประเทศไทย ประเทศพม่า และประเทศลาว หรือรู้จักกันในนามของดินแดนสามเหลี่ยมทองคำ ซึ่งอดีตเป็นแหล่งผลิตฝิ่นที่สำคัญของโลก ปัจจุบัน จังหวัดเชียงรายได้รับความสนใจในฐานะประตูสู่พม่า ลาว และจีนตอนใต้ ผ่านทางหลวงเอเชียสาย 2 และทางหลวงเอเชียสาย 3

เมืองเชียงรายมีประวัติศาสตร์อันยาวนาน เป็นที่ตั้งของหิรัญนครเงินยางเชียงแสน ซึ่งเป็นนครหลวงก่อนการกำเนิดอาณาจักรล้านนา มี "คำเมือง" เป็นภาษาท้องถิ่น มีเอกลักษณ์เฉพาะตัวทั้งด้านศิลปะ ประเพณีวัฒนธรรมที่มีความหลากหลายทางชาติพันธุ์ในรูปแบบล้านนา ไทใหญ่ ไทเขิน และไทลื้อจากสิบสองปันนาผสมผสานกัน
                                                            </p>
							</div>

							<!-- Hotel Info Tags -->

							

						</div>
						
						<!-- Rooms -->
						<h1 class="hotel_title">Attraction Review</h1>
						<div class="rooms">

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">สิงห์ ปาร์ค </div>
											<p>สิงห์ ปาร์ค (Singha Park) หรือที่หลาย ๆ คนเรียกว่า ไร่บุญรอด ตั้งอยู่ริมถนนสายเด่นห้า-ดงมะดะ อำเภอเมือง ห่างจากเขตชุมชนเมืองเชียงราย ประมาณ 9 กิโลเมตร ในพื้นที่ประมาณ 8,000 ไร่ ครอบคลุม 4 ตำบล ได้แก่ ตำบลดอยฮาง ตำบลรอบเวียง ตำบลป่าอ้อดอนชัย และตำบลแม่กรณ์ ความสูงของพื้นที่เฉลี่ย 450 เมตร เหนือจากระดับน้ำทะเล ในฤดูหนาวอากาศค่อนข้างเย็นสบาย  </p>
										</div>
									</div>
									
								</div>	
							</div>

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr2.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">พระตำหนักดอยตุงและสวนแม่ฟ้าหลวง </div>
											<p>พระตำหนักดอยตุง ตั้งอยู่ในเขตอำเภอแม่ฟ้าหลวง ห่างจากตัวเมืองเชียงรายประมาณ 60 กิโลเมตร พระตำหนักดอยตุงเคยเป็นที่ประทับแปรพระราชฐานเพื่อทรงงานของสมเด็จพระศรีนครินทราบรมราชชนนี มีรูปทรงผสมผสานระหว่างศิลปะล้านนากับชาเลย์ของประเทศสวิตเซอร์แลนด์ มีการแกะสลักไม้ตามกาแล เชิงชายและขอบหน้าต่างเป็นลวดลายต่าง ๆ โดยฝีมือช่างชาวเหนือ รอบ ๆ พระตำหนักมีสวนดอกไม้หลากพันธุ์ หลายสี ให้ความสวยงามสดชื่น โดยเฉพาะในฤดูหนาวจะเห็นหมอกจาง ๆ บริเวณยอดเขารอบพระตำหนัก มีเจ้าหน้าที่นำชมเป็นรอบ ๆ ละ 20 นาที </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr3.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดร่องขุ่น </div>
											<p> วัดร่องขุ่น อยู่ในท้องที่ตำบลป่าอ้อดอนชัย อำเภอเมือง ออกแบบและก่อสร้างโดย อาจารย์เฉลิมชัย โฆษิตพิพัฒน์ เมื่อ พ.ศ. 2540 โดยบนพื้นที่เดิมของวัด 3 ไร่ และขยายออกเป็น 12 ไร่ พระอุโบสถสีขาวตกแต่งด้วยลวดลายกระจกสีเงินแวววาว เป็นเชิงชั้นลดหลั่นกันไป หน้าบันประดับด้วยพญานาค ภาพจิตรกรรมฝาผนังภายในพระอุโบสถและห้องแสดงภาพวาดน่าสนใจมาก เปิดให้เข้าชมทุกวัน </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr4.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ดอยวาวี  </div>
											<p>ดอยวาวี เป็นชุมชนขนใหญ่ของชาวจีนฮ่อ กองพล 93 ซึ่งอพยพเข้ามาตั้งหลักปักฐานราว 50 ปีมาแล้ว ยึดอาชีพปลูกชาและผลไม้ท่ามกลางบรรยากาศอันสงบเงียบและทิวทัศน์งามของดอยสูงเช่นเดียวกับชุมชนดอยแม่สลอง แม้หมู่บ้านจะมีขนาดเล็ก แต่ผู้มาเยือนจะได้สัมผัสกลิ่นอายชุมชนชาวจีนอันเรียบง่าย ราวกับอยู่ทางแถบยูนนานตอนใต้ของจีน ขณะที่พ้นหมู่บ้านออกไปบนดอยก็เขียวขจีด้วยไร่ชาที่ลดหลั่นตามลาดเขา ช่วยประดับทิวทัศน์ชุมชนและเทือกดอยให้งดงามชวนมอง ใกล้กับดอยวาวีมีจุดชมทะเลหมอกอยู่บน "ดอยกาดผี" ซึ่งเป็นแหล่งท่องเที่ยวยอดนิยมของอำเภอแม่สรวย เมื่อขึ้นไปยืนที่ชะง่อนผาสูง 1,500 เมตร จะสามารถมองเห็นทะเลหมอกหนาทึบเต็มหุบเขา พร้อมกับภาพอลังการของขุนเขาสลับซับซ้อนตามแนวเทือกดอยช้าง ซึ่งดอยกาดผีอยู่ห่างจากดอยวาวีประมาณ 20 กิโลเมตร ตามเส้นทางค่อนข้างทุรกันดาร ระหว่างทางยังผ่านหมู่บ้านชาวอ่าข่าและเย้า  </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr5.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วนอุทยานภูชี้ฟ้า </div>
											<p>วนอุทยานภูชี้ฟ้า เป็นจุดชมวิวทะเลหมอกและพระอาทิตย์ขึ้นสุดฮอตของจังหวัดเชียงราย อยู่ห่างจากดอยผาตั้ง 25 กิโลเมตร มีลักษณะเป็นยอดเขาที่แหลมชี้ขึ้นไปบนท้องฟ้า อยู่สูงจากระดับทะเลประมาณ 1,628 เมตร โดยมีหน้าผาเป็นแนวยาวยื่นไปทางฝั่งประเทศลาว บนยอดภูชี้ฟ้าเป็นทุ่งหญ้ากว้าง ในฤดูหนาวจะมีทิวทัศน์สวยงามเป็นพิเศษ นักท่องเที่ยวส่วนมากจะมาค้างแรมบริเวณบ้านร่มฟ้าทองทาง ซึ่งห่างจากจุดชมวิวประมาณ 1.5 กิโลเมตร แล้วจะเดินขึ้นภูชี้ฟ้าเพื่อไปชมวิวตอนเช้ามืด ระหว่างทางจะพบแปลงปลูกป่านางพญาเสือออกดอกบานสะพรั่งสวยงาม (เดือนมกราคม-กุมภาพันธ์) และในช่วงเดือนกุมภาพันธ์ต้นเสี้ยวดอกขาวรอบภูชี้ฟ้าจะออกดอกบานเต็มเชิงเขา</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr6.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title"> ดอยผาตั้ง </div>
											<p> ดอยผาตั้ง ตั้งอยู่ใกล้ทางหลวงหมายเลข 1093 กิโลเมตรที่ 89 เป็นจุดชมวิวไทย-ลาว มีความสูง 1,635 เมตร และเที่ยวชมทะเลหมอกได้ตลอดปี ซึ่งในเดือนธันวาคมถึงมกราคมมีดอกซากุระบาน และเดือนกุมภาพันธ์ก็จะมีดอกเสี้ยวบานสะพรั่งงดงาม นอกจากนี้ ยังเป็นที่ตั้งของหมู่บ้านชาวจีนฮ่อ ม้ง และเย้า โดยเฉพาะจีนฮ่อนั้น อดีตเคยเป็นส่วนหนึ่งของกองพล 93 ซึ่งอพยพเข้ามาตั้งถิ่นฐานอยู่ที่ดอยผาตั้งนี้ ปัจจุบันประกอบอาชีพทางการเกษตร ปลูกพืชเมืองหนาว เช่น บ๊วย ท้อ สาลี่ แอปเปิล และชา</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr7.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">เรียวกัง คาเฟ่ </div>
											<p>ด้วยบรรยากาศรายล้อมที่มีความคลับคล้ายกับชนบทของประเทศญี่ปุ่น ผนวกกับความชอบในวัฒนธรรม อันสงบลุ่มลึกของชาวญี่ปุ่น ทำให้เจ้าของได้เริ่มต้นสร้างร้านกาแฟเล็กๆ ขึ้นมาก่อน โดยใช้ชื่อว่า “เรียวกัง คาเฟ่” (Ryokan Cafe’) ขึ้นมา ก่อนที่ เชียงรายเรียวกัง จะเปิดบริการห้องพักแบบญี่ปุ่น ได้เริ่มต้นจากการเปิดร้านกาแฟ แบบ Open Air ให้คอกาแฟ ทั้งหลายได้เพลิดเพลินกับบรรยากาศท้องทุ่ง กลิ่นกรุ่นวัฒนธรรมญี่ปุ่น พร้อมลิ้มรสกาแฟ และเครื่องดื่มกว่าร้อยชนิด นอกจากนี้ทาง เรียวกังคาเฟ่ ยังมีเมนูพิเศษ อาหารจานเดียวแนว ฟิวชั่นญี่ปุ่นล้านนา ที่คัดสรรมาให้นักชิมทั้งหลายมาลิ้มลอง จนติดใจต้องแวะมาชิมอยู่เสมอ</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr8.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">เดอะ วอนเดอเรอร์</div>
											<p>ร้านกาแฟเท่ๆ ที่ตั้งอยู่ทามกลางต้นไม้ ป่าสีเขียว ที่ชวนให้เราอดสงสัยไม่ได้ว่าข้างในจะสวยและบรรยากาศดีเพียงใด สมกับชื่อร้านที่ว่า The Wanderer ร้านนี้อยู่ไม่ไกลจากวัดร่องเสือเต้นมากนัก และถึงแม้จะเป็นใหม่ได้ไม่นานแต่ก็กำลังเป็นที่นิยมมากๆ มานั่งจิบกาแฟ ทานขนมอร่อยๆ ฟังเสียงธรรมชาติ นก บลาๆ มันได้ฟิลลิ่งสุดๆ อีกทั้งที่นั่งภายในร้านก็มีมุมเยอะมากๆ ทั้งเรือนกระจก หรือนั่งติดริมแม่น้ำกก </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr9.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">พิพิธภัณฑ์ บ้านดำ  </div>
											<p>สร้างขึ้นโดย อ.ถวัลย์ ดัชนี ศิลปินแห่งชาติที่มีฝือทางด้านจิตรกรรม ปฏิมากรรม ซึ่งท่านได้สร้างผลงานศิลปะไว้มากมาย บอกเลยว่าเคยเห็นครั้งแรกสวยสะดุดตามากๆ ถึงแต่จะเป็นที่ดำที่ทำให้รู้สึกถึงความดุดันก็ตาม แต่ก็สวยมากๆ ทีเดียวค่ะ บ้านดำ เป็นกลุ่มบ้าน ศิลปะล้านนา ทุกหลังจะทาด้วยสีดำ ซึ่งเป็นที่มาของชื่อบ้านดำและยังเป็นสีโปรดของ อ.ถวัลย์ อีกด้วย มีทั้งหมด 36 หลัง จะมีลักษณะที่แตกต่างกันออกไป ในบ้านแต่ละหลังจะประดับด้วยไม้แกะสลักที่มีลวดลายงดงาม นอกจากนี้ยังมีเขาสัตว์ เช่น เขากวาง เขาควาย และกระดูกสัตว์ เช่นกระดูกช้าง ประดับด้วย ซึ่งบ้านเหล่านี้อาจารย์ไม่ได้สร้างเพื่ออยู่อาศัย แต่สร้างเพื่อเก็บสะสมสิ่งของต่างๆ </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_cr10.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดร่องเสือเต้น</div>
											<p>เป็นอีกหนึ่งวัดสวยที่ไม่ควรพลาด เมื่อมาเยือนเชียงราย วัดนี้สวยมากๆ เล่นสีสันสดใส น้ำเงินฟ้าเหลือบม่วง โดดเด่นมากๆ สร้างเป็นลวดลายกนกและผสมความดุดันเข้าด้วยกัน สร้างโดยคุณ สล่านก หรือนายพุทธา กาบแก้ว ลูกศิษย์ของอาจารย์เฉลิมชัย โดนท่านนิยามพระวิหารแห่งนี้ว่า เป็นทิพยสถาน คือเป็นการสรรเสริญพระพุทธเจ้าทั้งในรูปแบบของประติมากรรมและจิตรกรรม เมื่อคนเข้าไปมีจิตใจดีก็จะรักษาศีลก่อให้เกิดสมาธิและปัญญาตามมา</p>
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
$(function() {
  var today = new Date(); 
    var dd = today.getDate(); 
    var mm = today.getMonth()+1; //January is 0! 
    var yyyy = today.getFullYear(); 
    if(dd<10){ dd='0'+dd } 
    if(mm<10){ mm='0'+mm } 
    var today = dd+'/'+mm+'/'+yyyy; 
  
  $('input[name="datetimes"]').daterangepicker({
    minDate:today,
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