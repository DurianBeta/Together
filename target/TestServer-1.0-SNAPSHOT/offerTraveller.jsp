<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
 
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Homestays"%>
<!DOCTYPE html>


<head>
    <title>Offers</title>
 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travelix Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="styles/offers_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/offers_responsive.css">
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
                <div class="logo menu_logo"><a href="Homestay"><img src="images/.png" alt=""></a></div>
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
            <div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/about_background.jpg"></div>
            <div class="home_content">
                <div class="home_title">our offers</div>
            </div>
        </div>

        <!-- Offers -->

        <div class="offers">

            <!-- Search -->

            <div class="search">
                <div class="search_inner">

                    <!-- Search Contents -->

                    <div class="container fill_height no-padding">
                        <div class="row fill_height no-margin">
                            <div class="col fill_height no-padding">

                                <!-- Search Tabs -->

                                <div class="search_tabs_container">
                                    <div class="search_tabs d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                                       
                                        
                                        

                                    </div>		
                                </div>

                                <!-- Search Panel -->

                                <div class="search_panel active">
                                    <form action="SearchHomestayServlet" id="search_form_1" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start" method="POST">
                                         
                                        <div class="search_item">
                                            <div>ท่านต้องการไปที่ไหน</div>
                                            <input type="text" name="allsearch" class="destination search_input" required="required">
                                        </div>
                                       
                                     
                                        
                                       
                                        
                                        <button class="button search_button">search<span></span><span></span><span></span></button>
                                    </form>
                                

                                <!-- Search Panel -->

                                

                                <!-- Search Panel -->

                                <div class="search_panel">
                                    <form id="search_form_3" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start" action="${pageContext.request.contextPath}/SearchHomestayServlet" method="post" >

                                        <div class="search_item">
                                            <div> HomeStayName </div>
                                            <input type="text" name="SearchHomeName" class="check_in search_input" placeholder="homestay name" minlength="5" maxlength="50">
                                        </div>



                                        <button class="button search_button">search<span></span><span></span><span></span></button>
                                    </form>
                                </div>

                                <!-- Search Panel -->









                                </form>
                            </div>

                            <!-- Search Panel -->


                        </div>
                    </div>
                </div>	
            </div>	
        </div>
        <!-- Offers Sorting -->
         
    

    <!-- Offers -->

    <%
        int i = 0;
    %>

    <c:forEach items="${loop}" var="hs">
        <%
            i++;
            
        %>
        <div class="container">
            
            <div class="row">
                <div class="col-lg-1 temp_col"></div>
                <div class="col-lg-11">


                </div>

                <div class="col-lg-12">
                    <!-- Offers Grid -->
                    <div class="col-lg-12" style="border-style: solid; border-radius: 20px; margin-top: 30px; padding-bottom: 20px; border-top-color:greenyellow; border-bottom-color: green; border-right-color: lime; border-left-color: seagreen;">
                    <div class="offers_grid">

                        <!-- Offers Item -->

                        <div class="offers_item rating_4">
                            <div class="row">
                                <div class="col-lg-1 temp_col"></div>
                                <div class="col-lg-3 col-1680-4">
                                    <div class="offers_image_container">
                                        <!-- Image by https://unsplash.com/@kensuarez -->
                                        <div class="offers_image_background" style="background-image:url(https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/${hs.name}0.jpg)"></div>
                                        <div class="offer_name" ><a href="SelectRoom?HomeStayName=${hs.name}&Detail=${hs.detail}&longtitude=${hs.longtitude}&latitude=${hs.latitude}&phone=${hs.phone}">${hs.name}</a></div>
                                    </div>       

                                </div>
                                <div class="col-lg-8">
                                    <div class="offers_content">

                                        
                                        <br><br>
                                         <p style="color: darkgreen; font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${hs.detail}</p>
                                       

                                       <div class="button book_button"><a href="SelectRoom?HomeStayName=${hs.name}&Detail=${hs.detail}&longtitude=${hs.longtitude}&latitude=${hs.latitude}&phone=${hs.phone}">book<span></span><span></span><span></span></a></div>

                                    </div>
                                </div>
                            </div>
                        


                        <!--offer-->


                        <!-- Offers Item -->


                    </div>
                </div>
                                       
            </div>
                </div>

        </div>		
        
</div>
    <!-- Footer -->


    <!-- Footer Column -->


    <!-- Copyright -->
</c:forEach>
        </div>
    </div>
<br><br><br><br>
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 order-lg-1 order-2  ">

            </div>
            <div class="col-lg-9 order-lg-2 order-1">
                <div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
                    <div class="footer_nav">
                        <ul class="footer_nav_list">
                                 <li class="main_nav_item"><a href="Homestay">home</a></li>
                                        <li class="main_nav_item"><a href="attraction.jsp">attraction</a></li>
                                        <li class="main_nav_item"><a href="Home">booking</a></li>
                                        <li class="main_nav_item"><a href="ShowBlogServlet">blog</a></li>
                                        <li class="main_nav_item"><a href="MyHomestayServlet"><%=EditHomestay%></a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/offers_custom.js"></script>
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
