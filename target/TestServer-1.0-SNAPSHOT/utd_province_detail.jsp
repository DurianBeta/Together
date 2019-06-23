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
									<h1 class="hotel_title">อุตรดิตถ์</h1>
									
								
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									
									
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd.jpg" alt="">
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
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd1.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd2.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd3.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd4.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd5.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd6.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd7.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd8.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd9.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/utd9.jpg" alt="https://unsplash.com/@mindaugas">
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
								<p>จังหวัดอุตรดิตถ์ตั้งอยู่ทางใต้สุดของภาคเหนือตอนล่าง โดยสภาพภูมิศาสตร์จังหวัดอุตรดิตถ์เป็นจังหวัดที่มีภูมิประเทศส่วนใหญ่เป็นภูเขาและที่สูงสลับซับซ้อน ซึ่งจะอยู่ทางตอนเหนือและทางตะวันออกของจังหวัด เนื่องจากทำเลที่ตั้งดังกล่าวจึงทำให้จังหวัดอุตรดิตถ์มีอากาศค่อนข้างร้อนอบอ้าวในฤดูร้อน มีอากาศฝนเมืองร้อนเฉพาะฤดูฝน และมีช่วงฤดูแล้งคั่นอยู่อย่างชัดเจนตั้งแต่ประมาณกลางเดือนตุลาคมถึงเดือนพฤษภาคม เดือนที่ร้อนที่สุดคือเดือนเมษายน จังหวัดอุตรดิตถ์ได้รับอิทธิพลจากมรสุมตะวันออกเฉียงใต้เป็นส่วนใหญ่ มรสุมตะวันออกเฉียงใต้ปกติจะมีแหล่งกำเนิดบริเวณทะเลอันดามัน ทำให้จังหวัดอุตรดิตถ์มีช่วงฤดูฝนกินระยะเวลาตั้งแต่เดือนพฤษภาคมจนถึงเดือนกันยายน โดยเดือนกันยายนเป็นเดือนที่มีปริมาณน้ำฝนเฉลี่ยสูงที่สุด.</p>
							</div>

							<!-- Hotel Info Tags -->

							

						</div>
						
						<!-- Rooms -->
						<h1 class="hotel_title">Attraction Review</h1>
						<div class="rooms">

							<!-- Room -->
							

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดใหญ่ท่าเสา</div>
											<p>วัดใหญ่ท่าเสา ตั้งอยู่ภายในชุนชนท่าเสา ชุมชนเก่าแก่ของจังหวัดอุตรดิตถ์ ซึ่งภายในวัดมีโบราณสถานที่น่าสนใจมากมาย ทั้งศาลาการเปรียญ, พระอุโบสถ, หอไตร, หอระฆัง และห้องสมุด (คัมภีร์ธรรม) โดยศาสนสถานเหล่านี้ตั้งอยู่ท่ามกลางความร่มรื่นอันเงียบสงบของวัด อีกทั้งยังมีต้นไม้น้อยใหญ่ ทั้งไม้ดอกและไม้ประดับทำให้ดูร่มรื่นยิ่งขึ้นไปอีกด้วย ส่วนเอกลักษณ์สำคัญอีกอย่างหนึ่งของวัด คือต้นตาลและต้นตะเคียนขนาดใหญ่ข้างศาลาการเปรียญ และยังมีลานกว้างไว้ให้พุทธศาสนิกชนได้ปฏิบัติศาสนกิจต่าง ๆ โดยในช่วงเข้าพรรษาและออกพรรษาจะมีพุทธศาสนิกชนมาร่วมทำบุญทุกวันพระเป็นประจำ
 </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd2.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดธรรมาธิปไตย</div>
											<p> วัดธรรมาธิปไตยเดิมชื่อ "วัดต้นมะขาม" และเนื่องจากน้ำเซาะตลิ่งพังเข้ามาเรื่อย ๆ วัดจึงย้ายหนีน้ำขึ้นมาห่างจากที่เดิมประมาณสองกิโลเมตร จากสภาพทำเลที่ตั้งใหม่ของวัดมีต้นไม้ร่มรื่นมากมาย โดยเฉพาะต้นมะขามขนาดใหญ่อยู่บริเวณวัด จึงได้ให้ชื่อว่า "วัดต้นมะขาม" วัดแห่งนี้เป็นที่เก็บบานประตูของวิหารหลังใหญ่ของวัดพระฝาง โดยบานประตูทำจากไม้ปรู แกะสลักในสมัยอยุธยาเป็นลายกนกก้านขด ระหว่างพุ่มมีกนกใบเทศขนาบสองด้าน กล่าวกันว่าเป็นบานประตูไม้แกะสลักที่มีความงามเป็นที่สองรองลงมาจากประตูวิหารวัดสุทัศน์ฯ ที่กรุงเทพฯ </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd6.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">อนุสาวรีย์พระยาพิชัยดาบหัก</div>
											<p>ประดิษฐานอยู่หน้าศาลากลางจังหวัดอุตรดิตถ์ สร้างขึ้นเพื่อเป็นเกียรติประวัติความกล้าหาญและเสียสละของ "พระยาพิชัย" เมื่อครั้งพม่ายกทัพมาตีเมืองพิชัยในสมัยกรุงธนบุรีจนได้รับชัยชนะ ถึงแม้ว่าในการรบครั้งนั้นดาบคู่ใจของพระยาพิชัยข้างขวาจะหักไปหนึ่งเล่มก็ตาม ด้วยวีรกรรมความกล้าหาญในครั้งนั้น ทำให้ได้รับสมญานามว่า "พระยาพิชัยดาบหัก" ภายในบริเวณอนุสาวรีย์ยังมีพิพิธภัณฑ์ดาบเหล็กน้ำพี้ที่ใหญ่ที่สุดในโลก รวมถึงพิพิธภัณฑ์พระยาพิชัยดาบหักอีกด้วยน  </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd3.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">หลวงพ่อเพชร วัดท่าถนน</div>
											<p> "วัดท่าถนน" เดิมชื่อวัดวังเตาหม้อ เป็นที่ประดิษฐานหลวงพ่อเพชร เล่ากันว่าเมื่อปี พ.ศ. 2436 หลวงพ่อด้วงได้เดินทางผ่านวัดร้างแห่งหนึ่ง และพบเข้ากับจอมปลวกขนาดใหญ่ผิดกว่าปกติ เลยเอาไม้เคาะปลายแหลมยอดของจอมปลวกนั้นจนดินหลุดออกมา และพบพระพุทธรูปขนาดใหญ่ฝังอยู่ในจอมปลวกนั้น หลวงพ่อด้วงและเหล่าบรรดาลูกศิษย์จึงได้อัญเชิญพระพุทธรูปองค์นั้นไปไว้ที่วัดหนองไม้ ต่อมาประชาชนได้แวะเวียนมาสักการะพระพุทธรูปเป็นจำนวนมาก และเล็งเห็นว่าสถานที่อาจคับแคบเกินไป จึงเห็นควรให้เชิญพระพุทธรูปองค์นี้ไปประดิษฐานที่วัดวังเตาหม้อ (วัดท่าถนนในปัจจุบัน) 
											</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd4.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดพระแท่นศิลาอาสน์  </div>
											<p>วัดนี้มีพระแท่นศิลาอาสน์ศิลาแลงรูปสี่เหลี่ยมผืนผ้า มีตำนานเล่ากันว่าพระพุทธเจ้าเมื่อครั้งเป็นพระโพธิสัตว์เคยเสด็จมาจำศีลบำเพ็ญพุทธบารมีที่แห่งนี้ ภายในวิหารยังมีภาพวาดเกี่ยวกับพระราชกรณียกิจของราชวงศ์จักรี ส่วนใหญ่เกี่ยวกับรัชกาลที่ 5 และรัชกาลปัจจุบัน โดยปกติแล้วทางวัดจัดให้มีงานนมัสการพระแท่นศิลาอาสน์ในวันเพ็ญเดือน 3 ของทุกปี นอกจากนี้ยังมีพิพิธภัณฑ์ท้องถิ่น แสดงเครื่องมือจับสัตว์น้ำโบราณ เรือพายโบราณ เครื่องจักสาน เครื่องมือตีเหล็กและก่อสร้าง และเครื่องมือปรุงยาสมุนไพรแผนโบราณไว้ภายในพิพิธภัณฑ์อีกด้วย </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd5.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">บ้านท่าเรือ </div>
											<p>หมู่บ้านริมทะเลสาบ เป็นท่าเรือสำหรับขนถ่ายปลา ขณะเดียวกันก็มีแพไว้สำหรับนักท่องเที่ยวที่ต้องการล่องแพเที่ยวชมอ่างเก็บน้ำและทะเลสาบเหนือเขื่อนสิริกิติ์ นักท่องเที่ยวสามารถล่องแพท่ามกลางทะเลสาบกว้างสุดลูกหูลูกตา สัมผัสวิถีชีวิตชาวบ้าน และเฝ้ามองดูพระอาทิตย์กำลังตกดิน ลำแสงสีส้มของพระอาทิตย์ยามเย็นตกกระทบกับสายน้ำในทะเลสาบ พลันทำให้น้ำในทะเลสาบแลดูเป็นสีส้มทั่วท้องน้ำ ที่นี่ยังมีบริการที่พักแบบข้างคืนหรือเช้าไป-เย็นกลับ พร้อมอาหารแสนอร่อยไว้คอยบริการนักท่องเที่ยว</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd7.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">เขื่อนสิริกิติ์</div>
											<p>เป็นเขื่อนดินที่ใหญ่ที่สุดในประเทศไทย เดิมชื่อ "เขื่อนผาซ่อม" ต่อมาได้รับพระบรมราชานุญาตให้อัญเชิญพระนามาภิไธย สมเด็จพระนางเจ้าสิริกิติ์ พระบรมราชินีนาถ ขนานนามว่า "เขื่อนสิริกิติ์" บริเวณเหนือเขื่อนเป็นทะเลสาบขนาดใหญ่ที่ชื่อว่า "ทะเลสาบสุริยันจันทรา" เป็นบริเวณที่มีทิวทัศน์สวยงามมาก โดยเฉพาะอย่างยิ่งในช่วงฤดูหนาว ที่นี่จะเต็มไปด้วยพันธุ์ไม้ดอกไม้ประดับที่พร้อมใจกันออกดอกบานสะพรั่ง ยังมีการให้บริการเช่าจักรยาน เช่าเรือท่องทะเลสาบเหนือเขื่อน และบ้านพักไว้คอยบริการนักท่องเที่ยว </p>
										</div>
									</div>
									
								</div>	
							</div>
							
							

								
							
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_utd9.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">บ่อเหล็กน้ำพี้</div>
											<p>ตั้งอยู่ที่บ้านน้ำพี้ ห่างจากตัวเมืองประมาณ 56 กิโลเมตร ภายในมีบ่อเหล็กกล้าจำนวนหลายบ่อ และยังปรากฏเตาถลุงเหล็กโบราณนับพัน ๆ แห่ง แต่บ่อสำคัญและสงวนใช้สำหรับพระมหากษัตริย์ มีด้วยกัน 2 บ่อ คือ "บ่อพระแสง" และ "บ่อพระขรรค์" โดยการนำแร่เหล็กน้ำพี้ไปถลุงทำอาวุธเพื่อใช้ในการทำสงคราม อีกทั้งยังมีความเชื่อกันมาตั้งแต่สมัยโบราณว่าเหล็กจากแหล่งน้ำพี้มีความแข็งแกร่งและศักดิ์สิทธิ์ ในสมัยโบราณจึงมีช่างทำพระขรรค์ถวายพระมหากษัตริย์ โดยนำแร่เหล็กน้ำพี้จากบ่อไปถลุงทำพระขรรค์นั่นเองม </p>
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