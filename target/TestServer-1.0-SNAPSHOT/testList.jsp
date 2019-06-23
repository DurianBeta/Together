<%-- 
    Document   : testList
    Created on : Sep 19, 2018, 3:50:36 PM
    Author     : Dell64
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?callback=myMap"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
        <title>JSP Page</title>
    </head>
    <body>
  <form action="${pageContext.request.contextPath}/SearchHomestayServlet" method="post">
            <input type="text" name="inHomestay" required maxlength="50" placeholder="Homestay" ></input> <br><br>
             <input type="text" name="datetimes" class="size-15"  size="25" required/><br><br>
            <input type="submit" name="submit" value="submit">
        
  </form>

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
