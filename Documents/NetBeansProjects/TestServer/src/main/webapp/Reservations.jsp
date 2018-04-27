<%-- 
    Document   : Reservations
    Created on : Apr 4, 2018, 10:14:12 PM
    Author     : Dell64
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservations</title>
    </head>
    <body> 
        <h1>BOOKING</h1>
        <form action="testReservations">
            <div class="create-panel">
                    
                <div class="form-group">
                    <label for="surname ">Surname</label>
                    <input name="surname" type="text" class="form-control" >
                    <div id='myform_vaccine_errorloc' class="error_strings"></div>
                </div>
                <div class="form-group">
                    <label for="sex ">Sex</label><br>
                    <div class="form-check form-check-inline">
                        <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="sex" value="M"> Male
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="sex" value="F"> Female
                        </label>
                    </div>
                    <div id='myform_sex_errorloc' class="error_strings test"></div>
                </div>
                <div class="form-group">
                    <label for="address ">Address</label>
                    <input name="address" type="text"  class="form-control">
                    <div id='myform_locationOfPet_errorloc' class="error_strings"></div>
                </div>  
                <div class="form-group">
                    <label for="room">ROOM</label>
                    <select name="room" class="form-control">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <div id='myform_type_errorloc' class="error_strings"></div>
                </div>
                <div class="form-group">
                    <label for="age ">Age</label>
                    <input name="age" type="number" class="form-control">          
                    <div id='myform_age_errorloc' class="error_strings"></div>
                </div>
             
                <div class="form-group">
                    <label for="moreInformation ">More</label>
                    <input name="moreInformation" type="textarea" class="form-control">
                    <div id='myform_moreInformation_errorloc' class="error_strings"></div>
                </div>

                <input type="submit" value="Reservations">

                </form>
                </body>
                </html>
