<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <script src="js/jquery-3.2.1.min.js"></script>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="js/form_si_re.js"></script>

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="styles/blog_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">

        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }

        </style>
        <link rel="stylesheet" type="text/css" href="styles/homestay_add_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/homestay_add_styles_responsive.css">
        <link rel="stylesheet" type="text/css" href="styles/form_log.css">
    </head>

    <body>
        <div style="text-align: center; margin-top: 15px;">
            <h2>Create Post</h2>
        </div>
        <br>

        <div class="container">
            <form class="validate-form" action="BlogServlet" enctype="multipart/form-data" method="POST">
                <input type="hidden" name="PosterldName" value="<%=session.getAttribute("login")%>">
                <label for="fname">PostName</label>
                <input type="text" id="pname" name="postname" placeholder="Post name.." class="wrap-input3 validate-input" data-validate="Postname is required">



                <label for="country">Post Tag</label>
                <select id="country" name="tag">
                    <option value="travel">Travel</option>
                    <option value="attraction">Attraction</option>
                    <option value="trip">Trip</option>
                </select>

                <label for="subject">Subject</label>
                <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

                <div>
                    <label>Image</label> <br> <br>
                    <img class="img-fluid rounded" src="images/-blog.jpg" alt="" id="image" style="height: 1000">
                    <div style="margin-bottom: 10px">

                    </div>
                    <input type="file" id="files" name="filename" class="text-center center-block file-upload" accept="image/jpeg" >
                    <div style="margin-bottom: 20px">

                    </div>
                </div>
                <div style="text-align: center">
                    <input type="submit" value="Submit">
                </div>
            </form>
        </div>

    </body>
    <script >
        document.getElementById("files").onchange = function () {
            var reader = new FileReader();

            reader.onload = function (e) {
                // get loaded data and render thumbnail.
                document.getElementById("image").src = e.target.result;
            };

            // read the image file as a data URL.
            reader.readAsDataURL(this.files[0]);
        };
    </script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
</html>
