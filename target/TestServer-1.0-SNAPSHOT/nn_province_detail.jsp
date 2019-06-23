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
									<h1 class="hotel_title">น่าน</h1>
									
								
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									
									
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn.jpg" alt="">
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
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn1.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn2.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn3.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn4.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn5.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn6.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn7.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn8.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn9.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/nn9.jpg" alt="https://unsplash.com/@mindaugas">
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
								<p>จังหวัดน่าน (คำเมือง: Lanna-Nan.png) เป็นจังหวัดหนึ่งในประเทศไทย ตั้งอยู่ทางทิศตะวันออกสุดของภาคเหนือ เป็นที่ตั้งของเมืองที่สำคัญในอดีต อาทิ เวียงวรนคร(เมืองพลัว) เวียงศรีษะเกษ(เมืองงั่ว) เวียงภูเพียงแช่แห้ง อีกทั้งยังเป็นแหล่งกำเนิดต้นน้ำที่สำคัญของแม่น้ำน่าน.
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
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระธาตุแช่แห้ง</div>
											<p>ปูชนียสถานที่สำคัญของเมืองน่าน ตั้งอยู่ตำบลม่วงตึ๊ด อำเภอภูเพียง ห่างจากวัดภูมินทร์ราว ๆ 3.6 กิโลเมตรเท่านั้น มีอายุเก่าแก่มากกว่า 600 ปี สร้างขึ้นระหว่างปี พ.ศ. 1969-1902 ในสมัยเจ้าพระยาการเมือง โดยมีจุดประสงค์ในการสร้างขึ้นเพื่อบรรจุพระบรมสารีริกธาตุ สันนิษฐานว่ารูปทรงเจดีย์นั้นได้รับอิทธิพลมาจากเจดีย์พระธาตุหริภุญชัย จังหวัดลำพูน องค์พระธาตุเป็นเจดีย์ทรงระฆัง รอบองค์บุด้วยทองจังโก มีความเชื่อกันว่าพระธาตุแช่แห้งนั้นเป็นพระธาตุประจำปีเกิดของปีเถาะ หากได้มาไหว้ขอพรก็จะเป็นสิริมงคลแก่ตัวเองและครอบครัว</p>
										</div>
									</div>
									
								</div>	
							</div>

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn2.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดมิ่งเมือง</div>
											<p>ตั้งอยู่บนถนนยันตรกิจโกศล (ถนนสุริยพงษ์) กลางเมืองน่าน ห่างจากวัดภูมินทร์เพียงแค่ราว ๆ 500 เมตร และยังเป็นสถานที่ตั้งของ "เสาหลักเมืองน่าน" ซึ่งตั้งอยู่ภายในศาลาจตุรมุข บริเวณด้านหน้าพระอุโบสถ มีความสูงราว ๆ 3 เมตร ฐานของเสาประดับด้วยไม้แกะสลักลวดลายสวยงาม บริเวณยอดเสาก็มีการแกะสลักเป็นรูปพรหมพักตร์ ส่วนพระอุโบสถก็งดงาม มีการออกแบบสถาปัตยกรรมแบบล้านนาร่วมสมัย ซึ่งได้ช่างชาวเชียงแสนมาเป็นผู้ทำลวดลายปูนปั้นให้กับผนังด้านนอกของอุโบสถ ภายในก็จะมีภาพจิตรกรรมฝาผนังอันสวยงามวิจิตรบรรจงให้ได้ชมกันด้วย 

 </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn3.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระธาตุช้างค้ำวรวิหาร£</div>
											<p>วัดที่มีความเก่าแก่ ตั้งอยู่บนถนนยันตรกิจโกศล (ถนนสุริยพงษ์) ตัดกับถนนผากอง ตรงข้ามกับแยกวัดภูมินทร์ สร้างขึ้นตั้งแต่ พ.ศ. 1949 ในสมัยของเจ้าปู่แข็ง เป็นวัดสำคัญที่เจ้าผู้ครองนครจะใช้ประกอบพิธีสำคัญทางพระพุทธศาสนา และทำพิธีถือน้ำพระพิพัฒน์สัตยาตามศิลาจารึกหลักที่ 74 โดยมีสิ่งที่น่าสนใจ เช่น เจดีย์ทรงลังกา สีทองอร่ามบริเวณหลังพระอุโบสถ รอบฐานจะมีรูปช้างปูนปั้นครึ่งตัวด้านละ 5 เชือก และมุมทั้งสี่ อีก 4 เชือก จึงกลายเป็นที่มาของชื่อวัดช้างค้ำ</p>
										</div>
									</div>
									
								</div>	
							</div>
							
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn5.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
                                                                                    <div class="room_title">วัดสวนตาล </div>
	</div>
											<p> ตั้งอยู่บนถนนเจ้าฟ้า ตำบลในเวียง อำเภอเมืองน่าน สร้างโดยพญาพันต้น เจ้าผู้ครองนครน่าน แห่งราชวงศ์ภูคา (ครองนครน่านระหว่าง พ.ศ. 1960-1969 ) ภายในวัดมีวิหารที่สวยงาม ตั้งเด่นเป็นสง่ามีสีทองระยิบระยับ และเป็นอีกวัดหนึ่งในจังหวัดน่านที่มีจิตรกรรมปูนปั้นที่สวยงาม โดยเฉพาะพญานาคเจ็ดเศียรเฝ้าบันไดหน้าวิหารวัด สีทองเหลืองอร่ามสวยงามตระการตา ภายในวิหารได้มีการเขียนภาพลายเส้นประวัติของพระพุทธเจ้าและประวัติการกำเนิดเมืองน่าน สวยงามและทรงคุณค่าอย่างยิ่ง 


											</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn6.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title"> วัดสวนตาล</div>
											<p> ตั้งอยู่บนถนนมหายศ ตำบลในเวียง อำเภอเมืองน่าน สร้างขึ้นโดยพระนางปทุมมาวดี เมื่อ พ.ศ. 1770 มีอายุเก่าแก่ถึง 600 ปี และเป็นโบราณสถานคู่เมืองน่าน มีสถานที่ที่น่าสนใจไม่ว่าจะเป็นเจดีย์ซึ่งมีสัณฐานงดงาม ชั้นล่างมีซุ้มประตูทั้งสี่ทิศ หรือ "พระเจ้าทองทิพย์" พระพุทธรูปทองสำริดองค์ใหญ่ ปางมารวิชัย หน้าตักกว้าง 10 ฟุต สูง 14 ฟุต 4 นิ้ว ประดิษฐานภายในวิหาร ซึ่งพระเจ้าติโลกราชแห่งนครเชียงใหม่ โปรดเกล้าฯ ให้สร้างขึ้นในปี พ.ศ. 1992 นอกจากนี้ยังมีการจัดงานนมัสการและสรงน้ำเป็นประจำทุกปีในช่วงเทศกาลสงกรานต์</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn7.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดหนองแดง</div>
											<p> วัดเก่าแก่อายุกว่า 200 ปี สร้างขึ้นเมื่อปี พ.ศ. 2330 โดยชาวไทลื้อร่วมกับไทพวน ที่นี่มีความน่าสนใจมากมาย โดยเฉพาะ “วิหารไทลื้อ” เป็นโบราณสถานที่สำคัญของอำเภอเชียงกลาง ด้วยอาคารมีสถาปัตยกรรมแบบไทยลื้อ มีช่อฟ้าแกะสลักด้วยไม้สักทอง เรียกว่า นกหัสดีลิงค์ มีเชิงชายประดับไม้ฉลุลายน้ำหยาด ซึ่งเป็นลวดลายเฉพาะของชาวไทลื้อ พร้อมทั้งด้านในยังมีจิตรกรรมฝาผนังเก่าแก่ แสดงทศชาติชาดกการบำเพ็ญเพียรของพระโพธิสัตว์ ซึ่งเขียนลงบนปูนที่ผสมตามสูตรสมัยโบราณ และยังมีองค์พระประดิษฐานบนฐานชุกชี เรียกว่า นาคบัลลังก์ อันเป็นเครื่องหมายแห่งความสง่างาม ความดี และเป็นอารักษ์แห่งพุทธศาสนาอีกด้วย 
</p>
									</div>
									
								</div>	
							</div>
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn8.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระธาตุเขาน้อย</div>
											<p>มภาพมหาชนในจังหวัดน่านที่นักท่องเที่ยวไม่ควรพลาดอีกจุดหนึ่ง นั่นคือจุดชมวิวเมืองน่านจากมุมสูง ลานปูนหลังพระพุทธรูปปางลีลาองค์ใหญ่ที่วัดพระธาตุเขาน้อย องค์พระธาตุตั้งอยู่บนยอดดอยเขาน้อย ซึ่งอยู่ด้านตะวันตกของตัวเมืองน่าน จุดชมวิวจุดนี้นักท่องเที่ยวจะได้เห็นลักษณะภูมิทัศน์ของเมืองน่าน ซึ่งทอดยาวไกลสุดลูกหูลูกตา ยิ่งถ้าได้ขึ้นมาชมวิวก่อนที่แสงพระอาทิตย์จะทำงาน ไม่แน่ว่าคุณอาจจะได้ทันเก็บภาพบรรยากาศสวยงามแสงแรกของพระอาทิตย์จากด้านหลังองค์พระพุทธรูป จนกลายเป็นอีกหนึ่งมุมภาพมหาชนประจำจังหวัดน่านไปแล้วก็ว่าได้ 
</p>
										</div>
									</div>
									
								</div>	
							</div>
							
							

								
							
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_nn9.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ดอยเสมอดาว</div>
											<p> ดอยเสมอดาว ที่เที่ยวน่านสุดฮอตฮิต อยู่ในเขตอุทยานแห่งชาติศรีน่าน อำเภอนาน้อย เป็นจุดชมวิวที่งดงามมากที่สุดแห่งหนึ่งของจังหวัดน่าน มีพื้นที่เป็นลานกว้างตามสันเขา เหมาะสำหรับการพักผ่อนดูดาว ดูดวงอาทิตย์ขึ้นและตกดินในบริเวณเดียวกัน ตอนกลางคืนสามารถมองเห็นแสงไฟจากอำเภอนาน้อย ดูแล้วคล้ายดิน และยังสามารถมองเห็นดาวบนท้องฟ้าได้อย่างชัดเจนและทั่วถึง ใกล้ ๆ กันเป็นที่ตั้งของ "ผาหัวสิงห์" หน้าผารูปร่างเหมือนสิงโตนอนหมอบหันหน้าไปทางทิศตะวันออก สามารถมองเห็นวิวทิวทัศน์ได้ 360 องศา ทิศเหนือมองเห็นตัวอำเภอเวียงสา ทิศใต้มองเห็นทิวเขาเป็นแนวยาว ทิศตะวันออกมองเห็นผาชู้ แม่น้ำน่าน ทิศตะวันตกมองเห็นตัวอำเภอนาน้อยเกือบทั้งหมด </p>
										</div>
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