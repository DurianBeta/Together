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

	<!-- Home -->

	

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
									<h1 class="hotel_title">แม่ฮ่องสอน</h1>
									
								
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									
									
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs.jpg" alt="">
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
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs1.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs2.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs3.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs4.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs5.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs6.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs7.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs8.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs9.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/mhs9.jpg" alt="https://unsplash.com/@mindaugas">
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
								<p>จังหวัดแม่ฮ่องสอน (คำเมือง: Lanna-Mae Hong Son.png; ไทใหญ่: Mhs shan.png) เป็นจังหวัดในภาคเหนือของประเทศไทย มีความโดดเด่นหลายลักษณะ โดยเฉพาะสภาพภูมิประเทศ ความหลากหลายด้านวัฒนธรรม และความหลากหลายของประชากรจากหลายกลุ่มชาติพันธุ์ นับเป็นจังหวัดที่สถิติน่าสนใจหลายอย่าง เช่น มีประชากรเบาบางที่สุดในประเทศ และมีประชากรน้อยมากเป็นอันดับ 5 ในขณะที่มีพื้นที่มากเป็นอันดับ 8 ของประเทศ

แม่ฮ่องสอนได้ชื่อว่าเป็น เมืองสามหมอก เนื่องจากมีสภาพภูมิประเทศเต็มไปด้วยภูเขาสูงสลับซับซ้อน สภาพอากาศมีหมอกปกคลุมตลอดเวลาส่วนใหญ่ของปี นอกจากนี้แม่ฮ่องสอนยังนับเป็นพื้นที่ปลายสุดด้านตะวันตกของประเทศ คือที่เส้นแวง 97.5 องศาตะวันออกในเขตอำเภอแม่สะเรียง (ตะวันออกสุดของประเทศ อยู่ที่อำเภอโขงเจียม จังหวัดอุบลราชธานี ที่ 105.5 องศาตะวันออก)

แม่ฮ่องสอนได้รบการสถาปนาขึ้นเป็นเมือง เมื่อปี พ.ศ. 2417 โดยพระเจ้าอินทรวิชยานนท์ พระเจ้านครเชียงใหม่ เจ้าเมืองประเทศราชแห่งสยามประเทศ</p>
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
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">พระธาตุดอยกองมู </div>
											<p>ก่อนเดินทางไปเที่ยว เรามาสักการะสิ่งศักดิ์สิทธิ์ประจำจังหวัดแม่ฮ่องสอนกันก่อนดีกว่า ณ พระธาตุดอยกองมู เดิมชื่อ วัดปลายดอน ตั้งอยู่ที่ดอยกองมู อำเภอเมือง ถือเป็นวัดและพระธาตุประจำจังหวัด และเป็นสิ่งศักดิ์สิทธิ์คู่เมืองแม่ฮ่องสอนมาช้านาน พระธาตุดอยกองมู เป็นปูชนียสถาน ประกอบด้วย พระธาตุเจดีย์ ศิลปะไทใหญ่-พม่า จำนวน 2 องค์ จากวัดพระธาตุ ดอยกองมูนี้ สามารถมองเห็นภูมิประเทศและสภาพตัวเมืองแม่ฮ่องสอนได้อย่างชัดเจน</p>
										</div>
									</div>
									
								</div>	
							</div>

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs2.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ดอยแม่อูคอ </div>
											<p>ชมความตระการตาแห่งสีสันพรรณไม้ ณ ทุ่งบัวตอง ดอยแม่อูคอ อำเภอขุนยวมจังหวัดแม่ฮ่องสอน เป็นสถานที่หนึ่งซึ่งคึกคักเป็นพิเศษในช่วงฤดูกาลท่องเที่ยว เพราะ ดอกบัวตอง จะบานสะพรั่งพร้อมกันในช่วงเดือนพฤศจิกายน – ธันวาคม นับเป็นทุ่งดอกบัวตองที่ใหญ่และสวยที่สุดในประเทศไทย โดย 1 ปี จะมีเพียงครั้งเดียวเท่านั้น ใครอยากเห็นกับตาต้องจัดสรรเวลาไปให้เหมาะ! จุดที่นักท่องเที่ยวนิยมขึ้นไปชมความสวยของ ทุ่งบัวตอง คือ บริเวณยอดดอยซึ่งมีความสูง 1,600 เมตร เหนือระดับน้ำทะเล สามารถมาเที่ยวแบบไปเช้า-เย็นกลับ หรือ กางเต็นท์ค้างแรมบนยอดดอย ถ้าโชคดีอาจได้ชมการแสดงดนตรีพื้นบ้านของชนท้องถิ่นที่มาเสริมสร้างให้บรรยากาศสนุกสนานเป็นพิเศษ </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs3.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ภูชี้เพ้อ </div>
											<p>ภูชี้เพ้อ ตั้งอยู่ในหน่วยจัดการต้นน้ำแม่หยอด อ.ขุนยวม ใกล้กับทุ่งดอกบัวตอง ดอยแม่อูคอ ในระดับความสูง 1,818 เมตร จากระดับน้ำทะเล ภูชี้เพ้อ ถือเป็นจุดวิวแห่งใหม่ที่ยังไม่ค่อยมีใครรู้จักมากนัก เป็นจุดชมวิวสำหรับชมพระอาทิตย์ขึ้น และสายหมอกที่แผ่กระจายไปทั่วทิวเขาที่สลับซับซ้อน เป็นภาพที่งดงามสุดจะบรรยาย หากมาในช่วงที่ดอกบัวตองบาน ท่านสามารถมองเห็นวิวของทุ่งดอกบัวตองบนดอยแม่อูคอในอีกมุมหนึ่งที่ไม่เหมือนใคร </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs4.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ม่อนหยุนไหล  </div>
											<p>ม่อนหยุนไหล จุดชมวิวบนภูเขาสูง โดดเด่นด้วยชื่อสไตล์จีน ตั้งอยู่ในอำเภอปาย เลยหมู่บ้านสันติชลไปประมาณ 3 กิโลเมตร บนจุดชมวิวทะเลหมอกหยุนไหล สามารถมองเห็นตัวเมืองปาย และสายหมอกที่รวมตัวกันเป็นก้อนไหลเหมือนดังสายน้ำท่ามกลางหุบเขาในอำเภอปาย ได้อย่างงดงาม นักท่องเที่ยวส่วนใหญ่จะเดินทางขึ้นไปจุดชมวิวทะเลหมอกหยุนไหล ประมาณ 05.30 น. เพื่อรับอากาศบริสุทธิ์ในยามเช้า และรอชมแสงแรกแย้มจากดวงอาทิตย์ อันอบอุ่นในยามเช้า ณ บนจุดชมวิวที่สูงตระหง่านในอำเภอปาย ด้านบนจุดชมวิวมีบ่อน้ำสำหรับใช้ในการบริโภคที่ไหลลงสู่ด้านล่างของภูเขา  </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs5.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ปางอุ๋ง</div>
											<p>ปางอุ๋ง มีชื่อเต็ม ว่า โครงการพระราชดำริปางตอง 2 (ปางอุ๋ง) ตั้งอยู่ที่ หมู่บ้านรวมไทย ตำบลหมอกจำแป่ อำเภอเมือง จังหวัดแม่ฮ่องสอน เป็นพื้นที่ส่วนหนึ่งในโครงการพัฒนาอันเนื่องมาจากพระราชดำริ อยู่ห่างจากตัวเมืองแม่ฮ่องสอนประมาณ 44 กิโลเมตร เป็นหนึ่งสถานที่น่าเที่ยวช่วงฤดูหนาว ถูกขนานนามว่า สวิตเซอร์แลนด์เมืองไทย ปางอุ๋ง มีลักษณะเป็น อ่างเก็บน้ำ ขนาดใหญ่ซึ่งอยู่บนยอดเขาสูง เป็นที่เที่ยวสุดโรแมนติกอันดับต้นๆ ของแม่ฮ่องสอน ภาพแสงอาทิตย์สาดสะท้อนน่านน้ำ ผสานไอหมอกจางๆ สร้างความประทับใจแก่ผู้มาเยือนทุกครั้ง มีกิจกรรมยอดฮิต คือ การล่องแพ ชมทัศนียภาพซึ่งถูกโอบล้อมไปด้วยป่าสน สวนดอกไม้ และกล้ชิดสายหมอก  </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs6.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ลีไวน์รักไทย </div>
											<p>ปตะลุยฝ่าโค้งพันศอก! เพื่อมาชมความงามของที่นี่ อีกหนึ่งที่พักบรรยากาศสุดยอด ที่เราอยากแนะนำ ลีไวน์รักไทย รีสอร์ทสไตล์จีนยูนาน ที่ถูกเนรมิตรขึ้นกลางไร่ชา ท่ามกลางสายหมอกและขุนเขา รับรองว่าจะทำให้คุณประทับใจจนแทบไม่อยากกลับบ้าน ลีไวน์รักไทย รีสอร์ท จำลองมาจากหมู่บ้านในมณฑลยูนาน ประเทศจีน หากคุณมาถึง อาจลืมไปว่านี่คือประเทศไทย เพราะมันเหมือนถอดแบบมาจากประเทศจีนจริงๆ อากาศก็แสนบริสุทธิ์ ยิ่งอยู่ท่ามกลางไร่ชาด้วยแล้ว ทำให้ดูอินขึ้นไปอีก แถมยังให้เราลองเก็บชาได้อีกด้วย แค่นึกภาพก็ฟินแล้ว แต่ก็สู้ไปสัมผัสของจริงไม่ได้แน่ๆ</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs7.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ดอยเมี่ยง</div>
											<p>สวรรค์เมืองหมอก ปักหมุดอยู่สูงประมาณ 1,600 เมตร ในพื้นที่ป่าดิบชื้นและภูเขาสูงชันสลับซับซ้อน เต็มไปด้วยพันธุ์ไม้หลายชนิด เช่น ต้นสน ต้นพญาเสือโคร่ง ต้นมะค่า ความสุขโดยสัมผัส คือการไปยืน ณ จุดชมวิวที่สามารถมองเห็นทัศนียภาพทิวทัศน์ของเมืองปายได้อย่างสวยงาม แบบสุดสายตา 360 องศา ท่ามกลางมวลอากาศหนาวเย็นและมีลมพัดโชยสบายทุกฤดูกาล</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs8.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">บ้านห้วยเสือเฒ่าง</div>
											<p>หมู่บ้านกะเหรี่ยงคอยาวที่อยู่ใกล้เมืองมากที่สุด รถยนต์สามารถเข้าถึงจึงมีนักท่องเที่ยวแวะเข้ามาเที่ยวชม กะเหรี่ยงคอยาวที่นี่เป็นจำนวนมาก อพยพลี้ภัยสงครามเข้ามา อยู่ที่แม่ฮ่องสอนนานแล้ว ดำรงชีวิตแบบดั้งเดิม ภายในหมู่นักท่องเที่ยวสามารถมาชมวิถีชีวิต และถ่ายรูปกับ กะเหรี่ยงคอยาวได้ หากมาในช่วงวันหยุดเสาร์ – อาทิตย์ ยังจะได้พูดคุยและถ่ายรูปกับเด็ก ๆ ชาวกระเหรี่ยงซึ่งแต่ ละคนหน้าตาน่ารักและช่างเจรจา ซึ่งวันธรรมดาเด็ก ๆ พวกนี้จะไปโรงเรียน นอกจากนี้บ้านแต่ละ หลังจะมีการนำ ของที่ระลึกมาขายให้กับนักท่องเที่ยวเพื่อเป็นการสร้างรายได้ สินค้าส่วนใหญ่จะเป็นพวกเสื้อผ้าและเครื่องประดับ เล็ก ๆ น้อยราคาไม่แพงมาก </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_mhs10.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ถนนคนเดินปาย </div>
											<p>จากแผงเล็กๆ ไม่กี่แผงของชาวบ้าน ขายสินค้าที่ระลึก และสินค้าหัตถกรรมพื้นเมืองโดยอาศัยไฟโคมริมถนน หรือแสงเทียนสลัวเรียงรายสองข้างทางยามค่ำคืน คือ บทเริ่มต้นของถนนคนเดินปายซึ่งปัจจุบันได้กลายมาเป็นเส้นทางเดินคึกคักมากสีสันที่สุดแห่งหนึ่งของภาคเหนือ ช่วยต่อเติมบรรยากาศสบายๆ ให้กับเมืองเล็กแห่งนี้ ทุกวันประมาณ 6 โมงเย็น ผู้คนเริ่มเดินคึกคัก มีกิจกรรมการแสดงเปิดหมวกต่างๆ สินค้าส่วนใหญ่ที่วางขายมักเป็นของที่ระลึกไอเดียเก๋ๆ ทั้งโปสการ์ด เสื้อยืดสกรีนรูปต่างๆ สินค้าหัตถกรรม ผ้าพันคอทอมือ ฯลฯ สลับกับอาหารหลากหลาย หากเดินเหนื่อยก็มีร้านชากาแฟตกแต่งสวยๆ ให้นั่งพัก บางร้านมีดนตรีหลากสไตล์ขับกล่อมอีกด้วย  </p>
										</div>
									</div>
									
								</div>	
							</div>
							\

								
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