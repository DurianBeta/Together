<%@page import="Model.Reservations"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Reservation History View</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="styles/table_reservation.css">
	<link rel="stylesheet" type="text/css" href="styles/history_table.css">
	<link rel="stylesheet" type="text/css" href="styles/history_table_responsive.css">
<!--===============================================================================================-->
</head>

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
<body>
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
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/onweb/single_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">History viewport</div>
		</div>
	</div>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
      
					<table>
						<thead>
							<tr class="table100-head">
                                                            	<th class="column1">Homestays</th>
								<th class="column1">Roomname</th>
								<th class="column2">Id Name</th>
								<th class="column3">Name</th>
								<th class="column4">Lastname</th>
								<th class="column5">Check-in</th>
								<th class="column6">Check-out</th>
                                                                <th class="column6">Phones</th>
							</tr>
						</thead>
                                                                                  <%

            ArrayList<Reservations> reservations = (ArrayList<Reservations>) request.getAttribute("HistoryUser");
            for (int i = 0; i < reservations.size(); i++) {


        %>
						<tbody>
								<tr>
									<td class="column1"><%= reservations.get(i).getHomestay()%></td>
                                                                        <td class="column1"><%= reservations.get(i).getRoomName()%></td>
									<td class="column2"><%= reservations.get(i).getTravellerIdName()%></td>
									<td class="column3"><%= reservations.get(i).getName()%></td>
									<td class="column4"><%= reservations.get(i).getLastName()%></td>
									<td class="column5"> <%= reservations.get(i).getCheckInTime()%></td>
									<td class="column6"><%= reservations.get(i).getCheckOutTime()%></td>
                                                                        <td class="column6"><%= reservations.get(i).getPhone()%></td>
								</tr>

								   <%}%>
								
						</tbody>
					</table>
                                                                
				</div>
			</div>
		</div>
	</div>
	


	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

</body>
</html>