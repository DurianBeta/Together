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
									<h1 class="hotel_title">พะเยา</h1>
									
								
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									
									
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py.jpg" alt="">
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
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py1.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py2.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py3.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py4.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py5.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py6.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py7.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py8.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement"  href="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py9.jpg">
												<img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/py9.jpg" alt="https://unsplash.com/@mindaugas">
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
								<p>จังหวัดพะเยา (คำเมือง: Lanna-Phayao.png พ(ร)ะญาว)[3] เป็นจังหวัดในภาคเหนือตอนบน บริเวณที่ตั้งของตัวเมืองพะเยาในปัจจุบันอยู่ติดกับกว๊านพะเยา เดิมเป็นที่ตั้งของเมือง ภูกามยาว หรือ พะยาว ที่ก่อตั้งขึ้นเมื่อพุทธศตวรรษที่ 16 โดยกษัตริย์องค์แรกคือ พญาจอมธรรม ซึ่งเป็นราชบุตรองค์หนึ่งจากเมืองหิรัญนครเงินยางเชียงแสน และเป็นบรรพบุรุษของกษัตริย์เมืองพะยาวอีกหลายองค์ เช่น พญาเจือง วีรบุรุษแห่งเผ่าไท-ลาวในพื้นที่ลุ่มแม่น้ำโขง และพญางำเมืองซึ่งได้กระทำสัตย์สาบานเป็นไมตรีต่อกันกับพญามังรายแห่งนครพิงค์เชียงใหม่ และพญาร่วงรามคำแหงแห่งสุโขทัย ภายหลังมีการเปลี่ยนแปลงอำนาจ และตกอยู่ภายใต้อิทธิพลของอาณาจักรล้านนา ในสมัยพญาคำฟู
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
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_py1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">กว๊านพะเยา</div>
											<p>กว๊านพะเยา สถานที่ท่องเที่ยวอันเป็นเอกลักษณ์แห่งจังหวัดพะเยา "กว๊าน" เป็นภาษาพื้นเมืองล้านนา หมายถึง หนองน้ำ หรือบึงน้ำขนาดใหญ่ ซึ่งกว๊านพะเยาก็ได้ครอบคลุมพื้นที่มากถึง 12,831 ไร่ ตั้งอยู่ในเขตอำเภอเมืองพะเยา มีลักษณะเป็นบึงรูปพระจันทร์เสี้ยวเกือบครึ่งวงกลม มีความลึกเฉลี่ยประมาณ 1.5 เมตร เป็นแอ่งน้ำที่รวบรวมลำห้วยต่าง ๆ 18 สาย ภายในบึงเป็นแหล่งเพาะพันธุ์ปลากว่า 50 ชนิด มีภูเขาโอบล้อมอย่างสวยงาม โดยรอบกว๊านพะเยามีการปลูกต้นไม้อย่างร่มรื่น สวยงาม เป็นสถานที่พักผ่อนหย่อนใจของชาวเมือง รวมทั้งเป็นสถานที่ท่องเที่ยวที่สวยงามมากอีกแห่งหนึ่งของจังหวัดพะเยา</p>
										</div>
									</div>
									
								</div>	
							</div>

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_py2.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">ศูนย์พัฒนาโครงการหลวงปังค่า</div>
											<p>ศูนย์พัฒนาโครงการหลวงปังค่า ตั้งอยู่ที่ตำบลผาช้างน้อย อำเภอปง จังหวัดพะเยา ครอบคลุมพื้นที่ประมาณ 22,505 ไร่ ภายในโครงการหลวงมีการส่งเสริมให้ชาวไทยภูเขาและคนท้องถิ่นปลูกพืชผักผลไม้ และดอกไม้เมืองหนาว นักท่องเที่ยวจึงสามารถเที่ยวชมแปลงปลูกไม้ดอกไม้ประดับ และผักผลไม้ อาทิ แว็กซ์ฟลาวเวอร์, มะเขือการ์ตูน, ฟักทองยักษ์, ฟักทองสีขาว, สวนลิ้นจี่ ฯลฯ ได้อย่างเพลิดเพลิน นอกจากนี้ที่นี่ยังมีบ้านพักไว้รับรองนักท่องเที่ยวอีกด้วย 

 </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_py3.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title"> อนุสาวรีย์พ่อขุนงำเมือง</div>
											<p> อนุสาวรีย์พ่อขุนงำเมือง ตั้งอยู่ที่สวนสาธารณะเทศบาลเมืองพะเยา ถนนเลียบกว๊านพะเยา ตำบลเวียง อำเภอเมืองพะเยา เป็นสถานที่ศักดิ์สิทธิ์ที่คนท้องถิ่นและนักท่องเที่ยวต่างพากันมาไหว้ขอพร พ่อขุนงำเมืองเป็นกษัตริย์ปกครองเมืองภูกามยาว ลำดับที่ 9 (1801-1841) ในยุคของพระองค์เป็นยุคที่รุ่งเรืองมาก พระองค์เป็นผู้ทรงอิทธิฤทธิ์ มีการเล่าขานต่อกันมาว่า ไม่ว่าพระองค์จะเสด็จไปทางไหน "แดดก็บ่อฮ้อน ฝนก็บ่อฮำ จักให้แดดก็แดด จักให้บดก็บด" นั่นจึงเป็นที่มาของพระนามว่า "งำเมือง"</p>
										</div>
									</div>
									
								</div>	
							</div>
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_py4.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วนอุทยานภูลังกา</div>
											<p> ในช่วงปลายฝนต้นหนาวและช่วงหน้าหนาวของทุกปี วนอุทยานภูลังกาจะได้รับความนิยมจากนักท่องเที่ยวค่อนข้างมาก ด้วยภายในบริเวณวนอุทยานภูลังกามีภูเขาหินปูนรูปร่างแปลกตามากมาย เป็นแหล่งกำเนิดทะเลหมอกที่สวยงามที่สุดแห่งหนึ่งของเมืองพะเยา ยามเช้าอากาศจะหนาวเย็นตลอดทั้งปี ยิ่งในช่วงหน้าหนาวจะมีบรรยากาศที่สวยงามมาก หมอกสีขาวมากมายจะลอยอย่างละมุนละไมโอบล้อมภูเขาหินปูน และสะท้อนแสงสีทองของพระอาทิตย์ในยามเช้าได้อย่างงดงามสุด ๆ อีกทั้งอากาศยังบริสุทธิ์ สูดเข้าปอดได้อย่างเต็มที่ เพิ่มความสดชื่นให้กับร่างกายได้อย่างดีทีเดียว 
</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_py5.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">อุทยานแห่งชาติป่าแม่ปืม 
	</div>
											<p> อุทยานแห่งชาติป่าแม่ปืม ครอบคลุมพื้นที่ถึง 2 จังหวัด คือจังหวัดเชียงรายและจังหวัดพะเยา พื้นที่ป่าส่วนใหญ่เป็นป่าเบญจพรรณและป่าเต็งรัง เต็มไปด้วยต้นไม้ ดอกไม้ป่า และสัตว์ป่ามากมาย พร้อมทั้งอ่างเก็บน้ำแม่ปืมที่โอบล้อมไปด้วยภูเขา ซึ่งมีบรรยากาศที่สวยงามผ่อนคลาย เป็นที่พักผ่อนหย่อนใจได้อย่างดี สถานที่ท่องเที่ยวที่น่าสนใจของอุทยานแห่งชาติป่าแม่ปืมคือ "จุดชมวิวดอยงาม" ตั้งอยู่บริเวณหน่วยพิทักษ์อุทยานแห่งชาติแม่ปืมที่ 1 (ป่าแดงงาม) เป็นภูเขายอดตัด มีความสูงจากระดับน้ำทะเลปานกลางประมาณ 978 เมตร สามารถมองเห็นภูเขาโดยรอบ และวิวของทะเลหมอกได้อย่างสวยงามสุด ๆ </p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_py6.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">อุทยานแห่งชาติภูซาง</div>
											<p> อุทยานแห่งชาติภูซาง ครอบคลุมพื้นที่บริเวณป่าน้ำหงาวฝั่งซ้าย ในท้องที่อำเภอเทิง จังหวัดเชียงราย ป่าน้ำเปี๋อยและป่าน้ำหย่วน และป่าน้ำลาว ในท้องที่อำเภอเชียงคำ กิ่งอำเภอภูซาง จังหวัดพะเยา มีเนื้อที่โดยรวมประมาณ 178,049.62 ไร่ ภายในอุทยานมีพื้นที่เป็นเทือกเขาสลับซับซ้อน มีเขตแดนติดกับสาธารณรัฐประชาธิปไตยประชาชนลาว สภาพป่าโดยรวมอุดมสมบูรณ์ เป็นป่าเบญจพรรณส่วนใหญ่ มีพืชพรรณหลากหลายชนิด พร้อมทั้งสัตว์ป่ามากมาย</p>
										</div>
									</div>
									
								</div>	
							</div>
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/att_py7.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">วัดศรีโคมคำ</div>
											<p> วัดศรีโคมคำ เป็นพระอารามหลวงชั้นตรี ตั้งอยู่ในเขตเทศบาลเมืองพะเยา มีพระพุทธรูปองค์ใหญ่ที่สุดในล้านนาไทย เรียกว่า "พระเจ้าองค์หลวง" มีขนาดหน้าตักกว้าง 14 เมตร สูง 16 เมตร ปัจจุบันเป็นพระคู่บ้านคู่เมืองของจังหวัดพะเยา และเป็นพระพุทธรูปคู่บ้านคู่เมืองอาณาจักรล้านนา ซึ่งในช่วงเดือนพฤษภาคม จะมีการจัด "งานประเพณีนมัสการพระเจ้าองค์หลวงเดือนแปดเป็ง" ขึ้นเป็นประจำทุกปี ซึ่งภายในงานจะมีการจัดกิจกรรมให้นักท่องเที่ยวได้ร่วมสนุกมากมาย พร้อมทั้งยังมีสินค้าและอาหารพื้นเมืองมาจำหน่ายในราคาย่อมเยาอีกด้วย 
										</p>
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