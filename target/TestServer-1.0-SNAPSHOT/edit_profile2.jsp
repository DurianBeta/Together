<!DOCTYPE html>
<html lang="en">
<head>
	<title>HomeStay Adding</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/"/> 
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="styles/util.css">
	<link rel="stylesheet" type="text/css" href="styles/homestay_add_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/homestay_add_styles_responsive.css">

</head>
	<style>
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: green;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
<header>
	<header class="header">

		<!-- Top Bar -->

		<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
				
						<div class="user_box ml-auto">
							<div class="user_box_login user_box_link"> 
  <div class="dropdown">
  <span class="user_box_login user_box_link" style="color: white">username</span>
  <div class="dropdown-content">
    <a href="user_profile.html" class="active">profile</a>
  <a href="edit_profile2.html">edit profile</a>
  <a href="viewhistory.html">history</a>
  </div>
</div></div>
							<div class="user_box_register user_box_link"><a href="registerform.html">logout</a></div>
						</div>
					</div>
				</div>
			</div>		
		</div>
		</div>
<nav class="main_nav">
			<div class="container">
				<div class="row">
					<div class="col main_nav_col d-flex flex-row align-items-center justify-content-start">
						<div class="logo_container">
							<div class="logo"><a href="index.html"><img src="images/" alt="">homestay</a></div>
						</div>
						<div class="main_nav_container ml-auto">
							<ul class="main_nav_list">
								<li class="main_nav_item"><a href="index.html">home</a></li>
								<li class="main_nav_item"><a href="about!.html">about us</a></li>
								<li class="main_nav_item"><a href="offers.html">booking</a></li>
								<li class="main_nav_item"><a href="blog.html">blog</a></li>
								<li class="main_nav_item"><a href="contact!.html">others</a></li>
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
			<div class="logo menu_logo"><a href="#"><img src="images/" alt=""></a></div>
			<ul>
				<li class="menu_item"><a href="#">home</a></li>
				<li class="menu_item"><a href="about.html">about us</a></li>
				<li class="menu_item"><a href="offers.html">booking</a></li>
				<li class="menu_item"><a href="blog.html">blog</a></li>
				<li class="menu_item"><a href="contact.html">contact</a></li>
			</ul>
		</div>
	</div>
	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/about_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">Edit Profile</div>
		</div>
	</div>
<br>

	<div class="container-contact100">
		<div class="contact100-map" style="background-image: url(images/edit_background.jpg);"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title" style="background-image: url(images/edit_background.jpg);">
				<span class="contact100-form-title-1">
					Edit Profile
				</span>

				<span class="contact100-form-title-2">
					
				</span>
			</div>
<!--name coordinates address postcode detail province pricing activities-->
			
			<form class="contact100-form validate-form">
			
				<div class="wrap-input100 validate-input" data-validate="FirstName is required">
					<span class="label-input100">First Name:</span>
					<input class="input100" type="text" name="fname" placeholder="Enter firstname">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="Last Name is required">
					<span class="label-input100">Last Name:</span>
					<input class="input100" type="text" name="lname" placeholder="Enter lastname">
					<span class="focus-input100"></span>
				</div>
				

				

				

				<div class="wrap-input100 validate-input" data-validate="Phone is required">
					<span class="label-input100">Phone:</span>
					<input class="input100" maxlength="10" type="number" name="quantity" id="quantity" placeholder="Enter Phone" />
					<span class="focus-input100"></span>
				</div>

				

				<div class="wrap-input100 validate-input" data-validate="Address is required">
					<span class="label-input100">Address:</span>
					<textarea class="input100" name="Detail" placeholder="Address"></textarea>
					<span class="focus-input100"></span>
				</div>
				

				<div>
					<span class="label-input100">Profile Picture:</span>
				<img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
				<div style="margin-bottom: 10px">
					
				</div>
        		<input type="file" class="text-center center-block file-upload" accept="image/x-png,image/jpeg">
<div style="margin-bottom: 20px">
					
				</div>
				</div>

				

				<div class="container-contact100-form-btn">

					<button class="contact100-form-btn">
						<span>
							Save
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>

					</button>
				</div>

			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

	<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/homestay_add_styles.css">
<link rel="stylesheet" type="text/css" href="styles/homestay_add_styles_responsive.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="js/single_listing_custom.js"></script>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="vendor/animsition/js/animsition.min.js"></script>
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/select2/select2.min.js"></script>
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<script src="vendor/countdowntime/countdowntime.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2WZkkoXh44w8kYdgLsJTnu05s1uaTiz0&libraries=geometry,places"></script>
<script src="js/map-custom.js"></script>
<script src="js/homeadd.js"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
</script>
<script >
	$(document).ready(function () {
  //called when key is pressed in textbox
  $("#quantity").keypress(function (e) {
     
     var maxlengthNumber = parseInt($('#quantity').attr('maxlength'));
     var inputValueLength = $('#quantity').val().length + 1;
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        
               return false;
    }
    if(maxlengthNumber < inputValueLength) {
    	return false;
    }
   });
});
</script>

</body>
<br>
<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-lg-1 order-2  ">
					<div class="copyright_content d-flex flex-row align-items-center">
					
					</div>
				</div>
				<!--name coordinates address postcode detail province pricing activities-->


				<div class="col-lg-9 order-lg-2 order-1">
					<div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
						<div class="footer_nav">
							<ul class="footer_nav_list">
								<li class="footer_nav_item"><a href="#">home</a></li>
								<li class="footer_nav_item"><a href="about.html">about us</a></li>
								<li class="footer_nav_item"><a href="offers.html">booking</a></li>
								<li class="footer_nav_item"><a href="blog.html">blog</a></li>
								<li class="footer_nav_item"><a href="contact.html">others</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script >
  $(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
</script>
</html>
