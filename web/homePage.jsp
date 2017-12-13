<%-- 
    Document   : homePage
    Created on : Dec 13, 2017, 11:58:45 AM
    Author     : armha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheeseSharing</title>
        <!-- Required meta tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <link href="https://fonts.googleapis.com/css?family=Kanit:300" rel="stylesheet">
    </head>
    <body>
        <%@include file="header.jsp" %>

        <img class="img-fluid" src="images/background1.jpg">
        <div class="" style="padding-top: 10px; padding-bottom: 10px; background-color:  white">
            <h1 style="margin-left: 5%; margin-top: 3%; color: #edb91f">ใหม่ล่าสุด</h1>
            <form action="">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row" style="padding: 10%;">
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row" style="padding: 10%;">
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row" style="padding: 10%;">
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                                <div class="col-3">
                                    <button class="btn btn-light">Test</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <!--<span class="carousel-control-next-icon" aria-hidden="true"></span>-->
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </form>

            <div class="" style="padding-top: 2%; padding-bottom: 2%; background-color: #f1f1f1">
                <div class="row">
                    <div class="col-5">
                        <img  style="width: 150px; height: 150px; float: right" src="images/icon-reading.png">
                    </div>
                    <div class="col-7" >
                        <h3>เคล็ดลับดูแลสายตาขณะอ่านหนังสือ</h3>
                        <p> 
                            หลับตา 5-10 นาที ให้แสงผ่านหนังตาเพื่อการไหลเวียนของโลหิตรอบดวงตา และเป็นการผ่อนคลายกล้ามเนื้อ<br>
                            ใช้มือสองข้างถูกันจนอุ่น หลับตา แล้วนำมือมาประคบที่ตาทิ้งไว้สักพัก ทำ 2-3 ครั้ง จนรู้สึกสบายตา<br>
                            สลับไปมองสีโทนเย็น เช่น สีเขียว,สีฟ้า ซึ่งเป็นสีที่ไม่สะท้อนแสงส่องเข้ามาใส่ตาของเรา ช่วยให้ตาได้พักผ่อน<br>
                            กระพริบตา เพื่อให้น้ำตามาหล่อเลี้ยงดวงตาของเรา พยายามกระพริบตาให้ได้ 12 ครั้ง ใน 1 นาที<br>
                        </p>
                    </div>
                </div>

            </div>
            <form action="">
                <div class="" style="padding-top: 10px; padding-bottom: 10px">
                    <h1 style="margin-left: 5%; margin-top: 3%; color: #aaa">หมวดหมู่วิชา</h1>
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        
                        <div class="carousel-inner">
                            <div class="carousel-item active" style="color: #edb91f">
                                <div class="row" style="padding-left: 5%;padding-right:5%;padding-top: 2%; padding-bottom: 2%">

                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(1)">
                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-science.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">วิทยาศาสตร์</label>
                                    </a>

                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(2)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-math.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">คณิตศาสตร์</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(3)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-lang.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">ภาษา</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(4)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-human.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">มนุษย์ศาสตร์</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(5)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-law.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">สังคม การเมือง <br>และการปกครอง</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(6)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-econ.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">เศรษฐศาสตร์</label>

                                    </a>
                                </div>
                            </div>

                            <div class="carousel-item">
                                <div class="row" style="padding-left: 5%;padding-right: 5%;padding-top: 2%; padding-bottom: 2%">
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(7)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-business.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">ธุรกิจ</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(8)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-history.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">ประวัติศาสตร์</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(9)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-art.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">ศิลปะ</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(10)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-com.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">คอมพิวเตอร์<br>และเทคโนโลยี</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(11)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-eng.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">วิศวะกรรมศาสตร์</label>

                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('category')&value=(12)">

                                        <img style="width: 120px; height: 120px;" src="images/icon-gray/gray-etc.png">
                                        <br>
                                        <label style="color: #bbb; margin-top: 1%">อื่นๆ</label>

                                    </a>
                                </div>
                            </div>
                        </div>

                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <!--<span class="carousel-control-next-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>
            </form>

            <form action="">
                <div class="" style="padding-top: 10px; padding-bottom: 10px; background-color: #edb91f">
                    <h1 style="margin-left: 5%; margin-right:5%; margin-top: 2%; color: white">คณะ</h1>
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row" style="padding-left: 5%;padding-right: 5%;padding-top: 1%; padding-bottom: 2%">
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(1)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/logo-egn.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะวิศวกรรมศาสตร์</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(2)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/logo-arch.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะสถาปัตยกรรมศาสตร์</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(3)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/logo-arch.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะวิทยาศาสตร์</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(4)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/logo-arch.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะเทคโนโลยีการเกษตร</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(5)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/logo-arch.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะครุศาสตร์<br>อุตสาหกรรม</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(6)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/logo-arch.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะอุตสาหกรรมเกษตร</label>
                                    </a>
                                    
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row" style="padding-left: 20%;padding-right: 10%;padding-top: 1%; padding-bottom: 2%">
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(7)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/logo-arch.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะเทคโนโลยีสารสนเทศ</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(8)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/gray-science.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">คณะการบริหารและจัดการ</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(9)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/gray-science.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">วิทยาลัยนวัตกรรม<br>การผลิตขั้นสูง</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(10)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/gray-science.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">วิทยาลัยนานาชาติ</label>
                                    </a>
                                    <a class="col-2" style="text-align: center;" href="listSheet.jsp?type=('faculty')&value=(11)">
                                        <img style="width: 120px; height: 120px;" src="images/logo-faculty/gray-science.png">
                                        <br>
                                        <label style="color: #fff; margin-top: 1%">วิทยาลัยนาโนเทคโนโลยี</label>
                                    </a>
                                    
                                </div>
                            </div>
                          
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <!--<span class="carousel-control-next-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>
            </form>

        </div>





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
        <!-- css -->
        <link rel="stylesheet" type="" href="css/yim_style.css">
        <link rel="stylesheet" type="" href="css/win-style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
