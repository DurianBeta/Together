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
                                                                        ลำปาง
                                                                    </h1>
									
								
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									
									
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa.jpg" alt="">
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
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa1.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa2.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa3.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa4.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa5.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa6.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa7.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa8.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa9.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/lpa9.jpg" alt="https://unsplash.com/@mindaugas">
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
								<p>จังหวัดลำปาง (คำเมือง: Lanna-Lampang.png) เป็นจังหวัดหนึ่งในภาคเหนือตอนบน ตั้งอยู่ในแอ่งที่ราบล้อมรอบด้วยภูเขา มีประวัติศาสตร์เก่าแก่ยาวนาน มีชื่อเรียกอย่างหลากหลายตั้งแต่ เขลางค์นคร, เวียงละกอน, นครลำปาง ฯลฯ ในภายหลังเป็นที่รู้จักกันดีอีกชื่อหนึ่งว่า เมืองรถม้า ที่สัมพันธ์กับเอกลักษณ์ของลำปาง</p>
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
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระธาตุลำปางหลวง</div>
											<p>วัดพระธาตุลำปางหลวงเป็นวัดคู่บ้านคู่เมืองที่มีความเก่าแก่งดงาม เข้าไปสักการะองค์พระธาตุซึ่งเป็นเจดีย์ทรงล้านนาขนาดใหญ่ ก่ออิฐถือปูน หุ้มด้วยแผ่นทองเหลือง ตามตำนานกล่าวว่าเป็นที่บรรจุพระบรมสารีริกขธาตุ อีกทั้งยังเป็นพระธาตุประจำปีเกิด ปีฉลู สักการะพระแก้วดอนเต้า หรือพระแก้วมรกต จากนั้นชมความงดงามของกู่พระเจ้าล้านทอง ภายในวิหารหลวง ถ่ายรูปกับซุ้มประตูโขง ฝีมือช่างหลวงโบราณ และชมปรากฏการณ์เงาพระธาตุกลับหัวด้านในซุ้มพระบาท ซึ่งอนุญาตให้เฉพาะผู้ชายขึ้นไปชมได้เท่านั้น </p>
										</div>
									</div>
									
								</div>	
							</div>

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa2.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">เหมืองแม่เมาะ</div>
											<p>เหมืองแม่เมาะเป็นเหมือนถ่านหินลิกไนต์ที่ใหญ่ที่สุดในประเทศไทย และเป็นหน่วยงานหนึ่งของการไฟฟ้าผลิตแห่งประเทศไทย (กฟผ.) มีหน้าที่ผลิตถ่านหินลิกไนต์เพื่อเป็นเชื้อเพลิงให้กับโรงไฟฟ้าแม่เมาะ นำไปผลิตเป็นกระแสไฟฟ้าต่อไป ภายในมีพิพิธภัณฑ์ศูนย์ถ่านหินลิกไนต์ศึกษา เป็นพิพิธภัณฑ์ความรู้ทางธรณีวิทยาและเทคโนโลยีการผลิตไฟฟ้า มีสวนพฤษชาติซึ่งเป็นสวนสาธารณะประดับด้วยพรรณไม้สวยงาม ห้ามพลาดการเล่นสไลเดอร์บนลานพื้นหญ้า ชมวิวสวยๆ ที่สวนเฉลิมพระเกียรติ 84 พรรษา และชมทุ่งดอกบัวตองบานสะพรั่งในเดือนพฤศจิกายน-ธันวาคม ของทุกปี
 </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa3.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ศูนย์อนุรักษ์ช้างไทย</div>
											<p> ชมความน่ารักของช้างไทย ที่ศูนย์อนุรักษ์ช้างไทยในพระอุปถัมภ์ของสมเด็จพระพี่นางเธอ เจ้าฟ้ากัลยาณิวัฒนา กรมหลวงนราธิวาสราชนครินทร์ เป็นสถานที่ดูแลช้างรวมถึงรักษาช้างที่เจ็บป่วยรวมมากกว่า 50 เชือก โดยเปิดให้เข้าเที่ยวชมได้ ภายในมีกิจกรรมชมการแสดงช้าง นั่งช้างชมธรรมชาติ ชมช้างอาบน้ำ หรือจะเที่ยวแบบพักค้างคืน นอนโฮมสเตย์ เรียนรู้วิถีชีวิตการเป็นควาญช้าง การฝึกขี่ช้าง เป็นต้น </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa4.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">อุทยานแห่งชาติแจ้ซ้อน </div>
											<p>ขึ้นเขาสัมผัสธรรมชาติ ที่อุทยานแห่งชาติแจ้ซ้อน เขตพื้นที่ป่าอันอุดมสมบูรณ์ เป็นแหล่งต้นน้ำลำธาร เต็มไปด้วยสัตว์ป่านานาชนิด และทรัพยากรทางธรรมชาติที่สวยงาม ชมบ่อน้ำพุร้อน แอ่งน้ำร้อน ซึ่งเกิดขึ้นตามธรรมชาติ ห้ามพลาดการต้มไข่น้ำแร่ทั้งไข่ไก่และไข่นกกระทา ชิมเมนูยำไข่แช่น้ำแร่ หรือจะลงอาบน้ำแร่บำรุงผิวพรรณให้สดใส นอกจากนี้บนอุทยานยังมีน้ำตกน่าเที่ยวหลายแห่ง ทั้งน้ำตกแจ้ซ้อน น้ำตกแม่มอญ และน้ำตกแม่ขุน</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa5.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดปงสนุก</div>
											<p>วัดปงสนุก หรือวัดปงสนุกเหนือ เป็นอีกหนึ่งวัดสำคัญของจังหวัดลำปาง สร้างขึ้นเมื่อปี พ.ศ. 1223 หรือประมาณ 1,300 ปีก่อน ภายในประดิษฐานเจดีย์ศรีจอมไคล วิหารพระเจ้าพันองค์ หรือวิหาร12 ราศี ลักษณะทางสถาปัตยกรรมเก่าแก่ วัดแห่งนี้ยังเป็นที่ประดิษฐานของเสาหลักเมืองเสาแรกของเขลางค์นคร รวมถึงได้รวบรวมสิ่งสำคัญอันทรงคุณค่าทางด้านศิลปวัฒนธรรมไว้มากมาย และเคยได้รับรางวัล Award of Merit จาก UNESCO ด้านการอนุรักษ์มรดกทางด้านวัฒนธรรมในภูมิภาคเอเชียแปซิฟิก 


											</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa6.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title"> ถนนคนเดินกาดกองต้า </div>
											<p>เดินช้อปปิ้งในบรรยากาศเก่าๆ ที่ถนนคนเดินกาดกองต้า ซึ่งจัดขึ้นเป็นประจำทุกวันเสาร์-อาทิตย์ บริเวณถนนตลาดเก่า นอกจากของกินอร่อยๆ สินค้าพื้นเมือง และของฝากของที่ระลึกที่วางขายกันมากมายแล้ว การเดินเที่ยวถนนคนเดินแห่งนี้ จะได้สัมผัสกับบรรยากาศความคลาสสิกผ่านทางลักษณะสถาปัตกรรมของอาคารบ้านเรือน ที่มีทั้งเรือนแบบไทยภาคกลาง แบบล้านนา แบบพม่า แบบจีน รวมไปถึงเรือนขนมปังขิงแบบฝรั่งเศส เนื่องจากในอดีต กาดกองต้า หรือที่เรียกว่าตลาดจีน เป็นตลาดโบราณที่มีท่าเรือสำคัญในการขนถ่ายสินค้าและเป็นศูนย์กลางทางการค้าของเมืองลำปางนั่นเอง</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa7.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">พิพิธภัณฑ์เซรามิกธนบดี</div>
											<p>พูดถึงลำปาง นอกจากรถม้าแล้วก็ต้องมี ชามตราไก่ หากอยากรู้เรื่องราวของชามตราไก่ชื่อดัง ต้องไปที่พิพิธภัณฑ์เซรามิกธนบดี ชมเรื่องราวความเป็นมาของเซรามิกลำปางและต้นกำเนิดของเซรามิก ชมสาธิตการผลิตเซรามิกชามตราไก่แบบดั้งเดิม และชมชามตราไก่ที่เล็กที่สุดในโลก ปิดท้ายด้วยการซื้อผลิตภัณฑ์เซรามิกคุณภาพดีราคาไม่แพงติดไม้ติดมือเป็นของฝาก</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa8.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">บ้านเสานัก</div>
											<p>บ้านเสานักเป็นบ้านไม้เก่าที่สร้างขึ้นเมื่อประมาณปี พ.ศ. 2438 โดยคหบดีพ่อค้าชื่อ “หม่องจันโอง” มีลักษณะเป็นบ้านไม้สักโบราณศิลปะพม่าผสมล้านนา มีเอกลักษณ์คือมีเสาเรือนถึง 116 ต้น ในอดีตเป็นสถานที่ต้อนรับแขกบ้านแขกเมืองและใช้เป็นสถานที่จัดงานขันโตกและงานพิธีมงคล ปัจจุบันยังคงรักษาสภาพเดิมไว้ได้เป็นอย่างดี และเปิดเป็นพิพิธภัณฑ์ศิลปวัฒนธรรม </p>
										</div>
									</div>
									
								</div>	
							</div>
							
							

								
							
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_lpa9.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดเฉลิมพระเกียรติพระจอมเกล้าราชานุสรณ์</div>
											<p>วัดเฉลิมพระเกียรติพระจอมเกล้าราชานุสรณ์ คือ Unseen Thailand ที่ต้องไปเยี่ยมชมสักครั้งในชีวิต วัดแห่งนี้ตั้งอยู่บนภูเขาสูงในอำเภอแจ้ห่ม ในพื้นที่ของเขตห้ามล่าสัตว์ป่าดอยพระบาท เดิมวัดแห่งนี้ชื่อวัดพระพุทธบาทปู่ผาแดง เนื่องจากบนวัดมีรอยพระพุทธบาทประดิษฐานอยู่ ภายในบริเวณวัดแบ่งออกเป็น 3 ชั้น ชั้นแรกคืออุโบสถและเจดีย์ ชั้นที่สองคือที่ประดิษฐานรอยพระพุทธบาท และชั้นสุดท้ายคือดอยพระบาท เป็นที่ประดิษฐานองค์พระธาตุสีทอง และเจดีย์สีขาวบนยอดเขาสูง และยังเป็นจุดชมทิวทัศน์ที่งดงาม </p>
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