<%-- 
    Document   : editProfile
    Created on : Dec 14, 2017, 1:34:06 AM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheeseSharing</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="row edit-mid edit_margin-top">
        <span class="col-6 Absolute-Center">
            <div style="color: #edb91f; text-align: center">
                <h1 style="" class="col-11 header-edit">USERNAME</h1>
            <div  style="display: inline-flex;color: #868686;text-align:  center;margin: 2%;">
                <h3 class="col-6" style="margin: 0;" >Piyachanin</h3>
                <h3 class="col-6" style="margin: 0;">Tadmorn</h3>
            </div>
            </div>
            <div class="img-profile">
                <img src="images/person3.jpg" style="" class="col-12">
            </div>

        </span>
        <span class="col-5 bg_color edit_margin-top">
            <div class="bg_color">
                <form action="" method="post">
                    <div class="name-margin" style="margin-top: 10%">
                        <input type="text" name="firstname" placeholder="ชื่อ" class="col-10 form-control margin_form"><br>
                        <input type="text" name="lastname" placeholder="นามสกุล"  class="col-10 form-control margin_form">
                    </div>
                    <input type="password" name="pasword" placeholder="รหัสผ่าน" class="col-10 form-control margin_form" pattern=".{6,}" title="กรุณากรอกรหัสผ่านมากกว่า 6 ตัว"><br>
                    <input type="password" name="repassword" placeholder="ยืนยันรหัสผ่านอีกครั้ง" class="col-10 form-control margin_form" pattern=".{6,}" title="กรุณากรอกรหัสผ่านมากกว่า 6 ตัว"><br>
                    <input type="Email" name="email" placeholder="อีเมล" class="col-10 form-control margin_form" disabled><br>
                    <select style="height: 35px" class="col-10 form-control margin_form" name="faculty">
                                <option value="" disabled selected>เลือกคณะ</option>
                                <option value="1">คณะวิศวกรรมศาสตร์</option>
                                <option value="2">คณะสถาปัตยกรรมศาสตร์</option>
                                <option value="3">คณะครุศาสตร์อุตสาหกรรม</option>
                                <option value="4">คณะวิทยาศาสตร์</option>
                                <option value="5">คณะเทคโนโลยีการเกษตร</option>
                                <option value="6">คณะเทคโนโลยีสารสนเทศ</option>
                                <option value="7">คณะอุตสาหกรรมเกษตร</option>
                                <option value="8">คณะการบริหารและจัดการวิทยาลัยนวัตกรรมการผลิตขั้นสูง</option>
                                <option value="9">วิทยาลัยนานาชาติ</option>
                                <option value="10">วิทยาลัยนาโนเทคโนโลยีพระจอมเกล้าลาดกระบัง</option>
                                <option value="11">วิทยาลัยอุตสาหกรรมการบินนานาชาติ</option>
                    </select>
                    <button class="btn col-7" style="margin: 20%">Submit</button>
                </form>
            </div>
        </span>
    </div>


    <!-- css -->
    <link rel="stylesheet" type="" href="css/yim_style.css">
    <link rel="stylesheet" type="" href="css/win-style.css">

    <!--js-->
    <script type="text/javascript" src="js/js-win.js"></script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
