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
                                                                    <h1 class="hotel_title">
                                                                        ลำพูน
                                                                    </h1>
									
								
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									
									
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp.jpg" alt="">
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
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp1.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lgp2.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lgp2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lgp3.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lgp3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp4.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp5.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp6.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp7.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp8.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp9.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lp9.jpg" alt="https://unsplash.com/@mindaugas">
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
								<p>จังหวัดลำพูน (คำเมือง: LN-Lamphun.png หละปูน) เป็นจังหวัดที่มีขนาดเล็กที่สุดในภาคเหนือ นับเป็นอีกจังหวัดหนึ่งที่มีประวัติศาสตร์เก่าแก่ ยาวนาน เคยเป็นที่ตั้งของนครหริภุญชัย ในสมัยพระนางจามเทวีเดิมชื่อเมืองหริภุญไชย เป็นเมืองโบราณ มีอายุประมาณ 1,343 ปี ตามพงศาวดารโยนกเล่าสืบต่อกันถึงการสร้างเมืองหริภุญไชย โดยฤๅษีวาสุเทพ เป็นผู้เกณฑ์พวกเม็งคบุตรหรือชนเชื้อชาติมอญมาสร้างเมืองนี้ขึ้น ในพื้นที่ระหว่างแม่น้ำสองสาย คือ แม่น้ำกวงและแม่น้ำปิง เมื่อมาสร้างเสร็จได้ส่งทูตไปเชิญราชธิดากษัตริย์เมืองละโว้พระนาม “จามเทวี” มาเป็นปฐมกษัตริย์ปกครองเมืองหริภุญไชยสืบราชวงศ์กษัตริย์ต่อมาหลายพระองค์ จนกระทั่งถึงสมัยพญายีบาจึงได้เสียการปกครองให้แก่พญามังราย ผู้รวบรวมแว่นแคว้นทางเหนือเข้าเป็นอาณาจักรล้านนา</p>
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
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดธาตุหริภุญชัย</div>
											<p>พระบรมธาตุหริภุญชัย เป็นโบราณสถานอันสำคัญของนครหริภุญชัยที่ พระเจ้าอาทิตยราช เป็นผู้สถาปนาขึ้นในราว พุทธศตวรรษที่ 17 เพื่อประดิษฐานพระบรมสารีริกธาตุ อันมี ธาตุกระหม่อม ธาตุกระดูกอก ธาตุกระดูกนิ้วมือ และธาตุย่อยอีกเต็มบาตรหนึ่ง ตามพุทธทำนายลักษณะทางสถาปัตยกรรมขององค์พระธาตุหริภุญชัย ตามที่ปรากฏในหนังสือตำนานพระธาตุหริภุญชัย กล่าวว่า มีลักษณะ เป็นสถูปสี่เหลี่ยมทรงปราสาท ที่มีซุ้มทวาร เข้า- ออกทะลุกันได้ทั้งสี่ด้าน มีปราสาทสี่เหลี่ยมอยู่ตรงมุมละองค์ก่อด้วยศิลาแลงซึ่งเป็นวัตถุดิบที่มีมากอยู่ในเมืองนี้ ภายในเป็นแท่น สำหรับประดิษฐาน พระโกศที่บรรจุพระบรมสารีริกธาตุ </p>
										</div>
									</div>
									
								</div>	
							</div>

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp2.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดจามเทวี  </div>
											<p>ชื่อเรียกที่รู้จักกันดีคือ เจดีย์กู่กุด หรือ เจดีย์กู่กุฎ หรือ เจดีย์มหาพล ที่เรียกกู่กุด เพราะมีส่วนยอดหลุดหรือหัก ส่วนมหาพลเป็นชื่อดีตที่ตั้งของวัดนี้ เอามาตั้งเป็นชื่อเจดีย์ เจดีย์ทรงปราสาทแบบหริภุญชัยองค์นี้เคยมียอด จึงเรียกทรงปราสาทยอดได้ด้วย มีลักษณะแปลกแตกต่างไปจากเจดีย์ทรงปราสาทในศิลปะล้านนาและศิลปะขอม คือ นับจากส่วนฐานทรงสี่เหลี่ยมมาเป็นเรือนธาตุทรงสี่เหลี่ยมเช่นกัน ตั้งซ้อนกันลดขนาดเป็นลำดับขึ้นไป 5 ขั้น แต่ละชั้นมีเจดีย์ประดับทิศทั้งสี่ และด้านทั้งสี่ของแต่ละชั้น มีพระพุทธรูปประดิษฐานอยู่ในซุ้มจระนำ และยอดแหลมที่หักหายคงเป็นกรวยเหลี่ยม </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp3.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">อุทยานแห่งชาติ แม่ปิง  </div>
											<p> ฃอุทยานแห่งชาติแม่ปิง มีพื้นที่ครอบคลุมอำเภอดอยเต่า จังหวัดเชียงใหม่ อำเภอลี้ จังหวัดลำพูน และอำเภอสามเงา จังหวัดตาก เป็นป่าที่อุดมไปด้วยทรัพยากรธรรมชาติป่าไม้และสัตว์ป่า มีทิวเขาทอดยาวเหยียดสลับซับซ้อน ลำห้วยน้อยใหญ่หลายสิบสาขาไหลผ่านที่สำคัญคือ ลำห้วยแม่หาด ลำห้วยแม่ก้อและทิวทัศน์ธรรมชาติที่สวยงามโดยเฉพาะพื้นที่ป่าตั้งอยู่ทางฝั่งซ้ายของลำน้ำปิงตอนเหนือของอ่างเก็บน้ำเขื่อนภูมิพล มีเนื้อที่ประมาณ 627,346 ไร่ หรือ 1,003.7536 ตารางกิโลเมตร </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp5.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">อุทยานแห่งชาติดอยขุนตาล  </div>
											<p>อุทยานแห่งชาติดอยขุนตาล มีพื้นที่ครอบคลุมอยู่ในพื้นที่อำเภอแม่ทา จังหวัดลำพูน และอำเภอห้างฉัตร อำเภอเมือง จังหวัดลำปาง สภาพพื้นที่เป็นป่าอุดมสมบูรณ์ไปด้วยพันธุ์ไม้นานาชนิด เป็นแหล่งต้นน้ำลำธาร ซึ่งเป็นบรรยากาศที่เงียบสงบ และอุโมงค์ขุนตานซึ่งเป็นอุโมงค์รถไฟที่ยาวที่สุดในประเทศไทย สร้างโดยชาวเยอรมัน มีเนื้อที่ประมาณ 159,556.25 ไร่ หรือ 255.29 ตารางกิโลเมตร  </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp4.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">กู่ช้าง กู่ม้า</div>
											<p>เป็นโบราณสถานที่ตั้งอยู่คู่กัน เป็นสถานที่ศักดิ์สิทธิ์คู่บ้านคู่เมืองอีกแห่งหนึ่งที่ชาวลำพูนให้ความเคารพนับถือ เมื่อต้องการ สมหวังในสิ่งใด ก็มักจะมา ขอพรกันที่นี่ เรียกได้ว่าเป็นทั้งโบราณสถานที่มีความสำคัญเชิงประวัติศาสตร์ และโบราณคดี ตลอดจนเป็น ที่ยึดเหนี่ยวจิตใจ ของคนในชุมชน ด้วยความเชื่อว่าเป็นสุสานช้างศึก - ม้าศึก คู่บารมีของพระนางจามเทวี 

											</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp6.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระพุทธบาทห้วยต้ม  </div>
											<p>ชุมชนพระบาทห้วยต้ม อยู่ในความดูแลศูนย์พัฒนาโครงการหลวงพระบาทห้วยต้ม ที่นี่อาจไม่โดดเด่นในเรื่องของธรรมชาติป่าเขา เขียวขจี และแปลงผักสด เหมือนกับเส้นทางท่องเที่ยวอื่นที่เคยได้พบเจอ แต่เป็นเส้นทางเพียงแห่งเดียวที่มีความแตกต่างชัดเจนในเรื่องของประเพณี วัฒนธรรม ความสวยงามของวัดวาอารามและวิถีชีวิต สามารถสัมผัสได้ที่ ชุมชนพระบาทห้วยต้ม ชุมชนที่ซ่อนตัวอยู่อย่างสงบในอำเภอลี้ อำเภอเล็กๆ ของจังหวัดลำพูน ชุมชนนี้มีสิ่งหนึ่งที่ทำให้ต้องรู้สึกแปลกใจ คือ ชาวบ้านถือศีลกินเจ ไม่บริโภคเนื้อสัตว์ทั้งหมู่บ้าน อาหารที่ขายให้กับนักท่องเที่ยวเป็นมังสวิรัติทั้งหมด จึงขอให้คำจำกัดความของเส้นทางท่องเที่ยวนี้ว่า เส้นทางสายบุญ</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp7.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระยืน</div>
											<p>วัดพระยืน ตั้งอยู่ตำบลเวียงยอง อำเภอเมือง จังหวัดลำพูน อีกหนึ่งวัดเก่าแก่ของลำพูน ชื่อเดิมว่า วัดพฤทธมหาสถาน ซึ่งพระเจ้าธรรมมิกราช กษัตริย์หริภุญชัย เป็นผู้สร้างขึ้นเมื่อ พ.ศ. 1606-1611 พระเจดีย์เป็นทรงมณฑป มีพระพุทธรูปยืนทั้งสี่ทิศ เครื่องบนประกอบด้วยเจดีย์ห้ายอด โดยมีเจดีย์ทรงระฆังและเจดีย์ทรงกลมขนาดเล็กเป็นประธาน คล้ายกับอานันทเจดีย์ที่เมืองพุกาม และพระเจดีย์วัดป่าสัก จังหวัดเชียงราย</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lp8.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระพุทธบาทตากผ้า</div>
											<p>วัดพระพุทธบาทตากผ้า เดิมเป็นวัดราษฎร์ ได้รับพระราชทานวิสุงคามสีมาเมื่อวันที่ ๒๕ ตุลาคม พ.ศ. ๒๕๑๖ และได้รับการยกฐานะเป็นพระอารามหลวงชั้นตรี ชนิดสามัญ เมื่อวันที่ ๓๑ พฤษภาคม พ.ศ. ๒๕๒๑ ตั้งอยู่ในเนื้อที่ประมาณ ๑๗๕ ไร่ ซึ่งเป็นเนินเขาเตี้ยๆ อยู่ใกล้ดอย (เขา) ๒ ลูกคือ ดอยช้างและดอยเครือ อยู่ห่างจากเมืองลำพูนประมาณ ๑๙ กิโลเมตร เป็นปูชนียสถานที่สำคัญแห่งหนึ่งของจังหวัดลำพูน หรือของภาคเหนือ ปัจจุบัน วัดพระพุทธบาทตากผ้า เป็นศูนย์กลางที่สำคัญของการศึกษาพระปริยัติธรรม ทั้งแผนกนักธรรม และบาลี ของพระภิกษุสามเณรในภาคเหนือ นอกจากนี้แล้ว ทางวัดได้จัดให้มีการปฏิบัติธรรมควบคู่ไปกับการศึกษา ได้จัดตั้งสำนักวิปัสสนากรรมฐานขึ้น เพื่อเป็นที่ปฏิบัติธรรมสำหรับพระภิกษุสามเณร อุบาสก อุบาสิกา และผู้สนใจทั่วไป</p>
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
								<li class="footer_nav_item"><a href="index.html">home</a></li>
								<li class="footer_nav_item"><a href="about.html">about us</a></li>
								<li class="footer_nav_item"><a href="offers.html">booking</a></li>
								<li class="footer_nav_item"><a href="blog.html">blog</a></li>
								<li class="footer_nav_item"><a href="contact.html">contact</a></li>
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