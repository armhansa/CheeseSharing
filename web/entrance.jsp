<%@page import="tool.ThaiName"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%String user = (String)session.getAttribute("Username");
if(user!=null){
    response.sendRedirect("homePage.jsp");
}%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheeseSharing</title>
        <!-- Required meta tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="stylesheet" href="css/indexStyle.css">
        <link href="https://fonts.googleapis.com/css?family=Kanit:300" rel="stylesheet">
    </head>
    <body style="font-family: 'Kanit'">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div style="text-align: center">
                <a class="navbar-brand" href="entrance.jsp"><img src="images/logo.png" style="width: 50%"></a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto"></ul>
                <form action="LoginServlet" method="POST" class="form-inline my-2 my-lg-0">
                    <input class="login-input form-control mr-sm-2" name="username" type="text" placeholder="ชื่อผู้ใช้งาน" pattern=".{2,20}" required title="กรอก username 2 ถึง 20 ตัวอักษร" maxlength="20">
                    <input class="login-input form-control mr-sm-2" name="password" type="password" placeholder="รหัสผ่าน" pattern=".{6,}" required title="กรอก password 6 ตัวอักษรขึ้นไป" maxlength="20">
                    <button class="login-btn btn btn-outline-success my-2 my-sm-0" type="submit">เข้าสู่ระบบ</button>
                </form>
            </div>
        </nav>

        <section id="fh5co-home" data-section="home" data-stellar-background-ratio="0.5" >
            <div style="padding: 75px">
                <div style="">

                    <div class="row">
                        <div class=" col-md-6 col-lg-7" style="overflow: hidden">
                            <div class="img" style="background: url('images/index-img1.jpg') no-repeat center;background-size: cover; width:100%;height: 100%"></div>
                        </div>
                        <div class="register col-md-6 col-lg-5">
                            <!-- Register -->
                            <form action="RegisterServlet" method="POST">
                                <h1 style="margin-top: 5%; margin-bottom: 5%">สมัครสมาชิก</h1>
                                <div class="">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6" style="margin-bottom: 30px">
                                            <input class="form-control" type="texts" name="firstName" placeholder=" ชื่อ" required title="กรุณากรอกข้อมูล" maxlength="20">
                                        </div>
                                        <div class="col-md-6 col-lg-6" style="margin-bottom: 30px">
                                            <input class="form-control" type="texts" name="lastName" placeholder=" นามสกุล" required title="กรุณากรอกข้อมูล" maxlength="20">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input id="usr_test" class="form-control" type="texts" name="username" placeholder=" ชื่อผู้ใช้งาน" pattern=".{2,20}" required title="กรอก username 2 ถึง 20 ตัวอักษร" maxlength="20">
                                </div>

                                <div class="form-group">
                                    <input id="pass_test" class="form-control" type="password" name="password" placeholder=" รหัสผ่าน" pattern=".{6,}" required title="กรอก password 6 ตัวอักษรขึ้นไป" maxlength="20">
                                </div>

                                <div class="form-group">
                                    <input class="form-control" type="Email" name="email" placeholder=" อีเมล" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required title="กรอกอีเมลไม่ถูกต้อง">
                                </div>

                                <div class="form-group">
                                    <select class="form-control" name="faculty" required>
                                        <option value="" disabled selected> เลือกคณะ</option>
                                        <%  ThaiName thaiName = ThaiName.getInstance();
                                            for(int i=0; i<thaiName.getFacultyCount(); i++) { %>
                                            <option value="<%= i %>"><%= thaiName.getFaculty(i) %></option>
                                        <% } %>
                                        
                                    </select>
                                </div>

                                <div class="form-group" style="margin-top: 20px">
                                    <a href="index.html"><button type="submit" class="btn button-2 btn-lg">สร้างบัญชีผู้ใช้งาน</button></a>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    </body>
</html>
