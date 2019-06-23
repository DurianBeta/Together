<%@page import="Model.Blog"%>
<%@page import="Model.BlogComment"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Blog Post</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="styles/blog_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">


    </head>


    <header>

        <div class="super_container">

            <!-- Header -->

            <header class="header">

                <!-- Top Bar -->
                <%
                    String msg;
                    String name;
                    String StatusUser;
                    String msgLogout;
                    String nameLogout;
                    String msgHomestay;
                    String EditHomestay;
                    String hidden;
                    if (session.getAttribute("login") != null) {
                        name = (String) session.getAttribute("login");
                        StatusUser = (String) session.getAttribute("Status");
                        EditHomestay = (String) session.getAttribute("EditHomestay");
                        msg = "ProfileServlet?user=" + name;
                        nameLogout = "Logout";
                        msgLogout = "Logout.jsp";
                        hidden = "";

                    } else {
                        name = "login";
                        msg = "signinform.jsp";
                        nameLogout = "register";
                        msgLogout = "registerform.jsp";
                        StatusUser = "Status";
                        msgHomestay = "";
                        EditHomestay = "";
                        hidden = "hidden";
                    }
                %>
                <div class="top_bar">
                    <div class="container">
                        <div class="row">
                            <div class="col d-flex flex-row">

                                <div class="user_box ml-auto">
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
                                <!--
                                <div class="content_search ml-lg-0 ml-auto">
                                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                  width="17px" height="17px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
                                    <g>
                                      <g>
                                        <g>
                                          <path class="mag_glass" fill="#FFFFFF" d="M78.438,216.78c0,57.906,22.55,112.343,63.493,153.287c40.945,40.944,95.383,63.494,153.287,63.494
                                          s112.344-22.55,153.287-63.494C489.451,329.123,512,274.686,512,216.78c0-57.904-22.549-112.342-63.494-153.286
                                          C407.563,22.549,353.124,0,295.219,0c-57.904,0-112.342,22.549-153.287,63.494C100.988,104.438,78.439,158.876,78.438,216.78z
                                          M119.804,216.78c0-96.725,78.69-175.416,175.415-175.416s175.418,78.691,175.418,175.416
                                          c0,96.725-78.691,175.416-175.416,175.416C198.495,392.195,119.804,313.505,119.804,216.78z"/>
                                        </g>
                                      </g>
                                      <g>
                                        <g>
                                          <path class="mag_glass" fill="#FFFFFF" d="M6.057,505.942c4.038,4.039,9.332,6.058,14.625,6.058s10.587-2.019,14.625-6.058L171.268,369.98
                                          c8.076-8.076,8.076-21.172,0-29.248c-8.076-8.078-21.172-8.078-29.249,0L6.057,476.693
                                          C-2.019,484.77-2.019,497.865,6.057,505.942z"/>
                                        </g>
                                      </g>
                                    </g>
                                  </svg>
                                </div>
                                -->
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
            <!-- Navigation -->
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
                <div class="home">
                    <div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/blog_background.jpg"></div>
                    <div class="home_content">
                        <div class="home_title">the blog</div>
                    </div>
                </div>


                <!-- Page Content -->
                <div class="container">

                    <div class="row">

                        <!-- Post Content Column -->
                        <div class="col-lg-8">

                            <!-- Title -->
                            <h1 class="mt-4" style="color: black;"><%=request.getAttribute("PostName")%></h1>

                            <!-- Author -->
                            <p class="lead" style="color: black;">
                                by
                                <a href="ProfileServlet?user=<%=request.getAttribute("PosterldName")%>"><%=request.getAttribute("PosterldName")%></a>
                            </p>

                            <hr>

                            <!-- Date/Time -->
                            <p>Posted on <%=request.getAttribute("PostDate")%></p>

                            <hr>

                            <!-- Preview Image -->
                            <img class="img-fluid rounded" src="<%=request.getAttribute("image")%>" alt="" style="height: 400px; width: 700px;">

                            <hr>

                            <!-- Post Content -->
                            <p>
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<%=request.getAttribute("Subject")%>
                            </p>

                            <hr>

                            <!-- Comments Form -->
                            <div class="card my-4">
                                <h5 class="card-header">Comment:</h5>
                                <div class="card-body" <%=hidden%>>
                                    <form action="CommentServlet" method="Post">
                                        <div class="form-group">
                                            <input type="hidden" name="Username" value="<%=session.getAttribute("login")%>">
                                            <input type="hidden" name="postname" value="<%=request.getAttribute("PostName")%>">
                                            <input type="hidden" name="Subject" value="<%=request.getAttribute("Subject")%>">
                                            <input type="hidden" name="image" value="<%=request.getAttribute("image")%>">
                                            <input type="hidden" name="PostDate" value="<%=request.getAttribute("PostDate")%>">
                                            <input type="hidden" name="PosterldName" value="<%=request.getAttribute("PosterldName")%>">
                                            <textarea class="form-control" rows="3" name="commentdetail"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </form>
                                </div>
                            </div>
                            <%

                                ArrayList<BlogComment> comment = (ArrayList<BlogComment>) request.getAttribute("blogcom");
                                for (int i = 0; i < comment.size(); i++) {


                            %>
                            <!-- Single Comment -->
                            <div class="media mb-4">
                                <img class="d-flex mr-3 rounded-circle" src="https://s3-ap-southeast-1.amazonaws.com/togetherpic/images/<%=comment.get(i).getIdName()%>0.jpg" alt="" style="height: 70px">
                                <div class="media-body">
                                    <h5 class="mt-0"><%=comment.get(i).getIdName()%></h5>
                                    <%=comment.get(i).getComment()%>
                                </div>
                            </div>
                            <%}%>
                            <!-- Comment with nested comments -->
                            <div class="media mb-4">

                                <div class="media-body">








                                </div>
                            </div>

                        </div>

                        <!-- Sidebar Widgets Column -->
                        <div class="col-md-4">

                            <!-- Search Widget -->


                            <!-- Categories Widget -->
                            <div class="sidebar_categories">
                                <div class="sidebar_title">Categories</div>
                                <div class="sidebar_list">
                                    <ul>
                                        <li><a href="SelectBlogServlet?type=travel">Travel</a></li>
                                        <li><a href="SelectBlogServlet?type=attraction">Attravtion</a></li>
                                        <li><a href="SelectBlogServlet?type=trip">Trip</a></li>

                                    </ul>
                                </div>
                                <div class="sidebar_latest_posts">
                                    <div class="sidebar_title">Other Posts</div>
                                    <div class="latest_posts_container">
                                        <ul>
                                            <%

                                                ArrayList<Blog> blogs2 = (ArrayList<Blog>) request.getAttribute("blogs");
                                                for (int i = 0; i < 4; i++) {
                                                    String date = blogs2.get(i).getPostDate();
                                                    String day = date.substring(0, 2);
                                                    String month = date.substring(3, 5);
                                                    String year = date.substring(6, 10);
                                                    int numrandom = (int) (blogs2.size() - 1) - i;

                                            %>
                                            <!-- Latest Post -->
                                            <li class="latest_post clearfix">
                                                <div class="latest_post_image">
                                                    <img src="<%=blogs2.get(i).getImage()%>" alt="" style="width: 70px; height: 70px;"></a>
                                                </div>
                                                <div class="latest_post_content">
                                                    <div class="latest_post_title trans_200"><a href="ViewBlogServlet?PosterldName=<%=blogs2.get(numrandom).getPosterldName()%>&postname=<%=blogs2.get(numrandom).getPostName()%>"><%=blogs2.get(i).getPostName()%></a></div>
                                                    <div class="latest_post_meta">
                                                        <div class="latest_post_author trans_200"><a href="ProfileServlet?user=<%=blogs2.get(numrandom).getPosterldName()%>"><%=blogs2.get(i).getPosterldName()%></a></div>
                                                        <div class="latest_post_date trans_200"><%=blogs2.get(i).getPostDate()%></a></div>
                                                    </div>
                                                </div>
                                            </li>
                                            <%}%>


                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Side Widget -->



                </div>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
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

</div>


<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/blog_custom.js"></script>
</html>
