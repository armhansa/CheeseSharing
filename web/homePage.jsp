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
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-light">
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-brand ">
                    <a class="" href="homepage.html" style="margin-right: 0">
                        <img src="images/logo.png" class="logo_size"></a>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Trigger the modal with a button -->
                        <button type="button" class="btn btn_upload" data-toggle="modal" data-target="#myModal">Upload</button>
                        <div class="dropdown">
                            <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown"> --><img class="user_profile dropdown-toggle" data-toggle="dropdown" src="images/person2.jpg"></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Profile</a></li>
                                <li class="divider"></li>
                                <li><a href="LogoutServlet">Logout</a></li>
                            </ul>
                        </div>

                    </ul>
                </div>
            </nav>
            <form action="UploadServlet" method="POST" enctype="multipart/form-data">
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Upload here!!</h4>
                          <button type="button" class="close" data-dismiss="modal">&times;</button>

                      </div>
                      <div class="modal-body">
                          <div class="form-group">
                            <br>
                            <input class="inputupload_win" id="uploadFile" placeholder="Choose File" disabled="disabled" />

                            <div class="fileUpload btn btn-sm" >
                                <span>Choose file</span>
                                    <input id="uploadBtn" type="file" class="upload" name="file_uploaded" accept=".pdf" required />
                            </div>

                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" id="usr" placeholder="ชื่อไฟล์" name="title">
                        </div>

                        <div class="form-group">
                            <select class="form-control" id="sel1" name="faculty" required>
                                <option value="" disabled selected>เลือกคณะ</option>
                                <option value="คณะวิศวกรรมศาสตร์">คณะวิศวกรรมศาสตร์</option>
                                <option value="คณะสถาปัตยกรรมศาสตร์">คณะสถาปัตยกรรมศาสตร์</option>
                                <option value="คณะครุศาสตร์อุตสาหกรรม">คณะครุศาสตร์อุตสาหกรรม</option>
                                <option value="คณะวิทยาศาสตร์">คณะวิทยาศาสตร์</option>
                                <option value="คณะเทคโนโลยีการเกษตร">คณะเทคโนโลยีการเกษตร</option>
                                <option value="คณะเทคโนโลยีสารสนเทศ">คณะเทคโนโลยีสารสนเทศ</option>
                                <option value="คณะอุตสาหกรรมเกษตร">คณะอุตสาหกรรมเกษตร</option>
                                <option value="คณะการบริหารและจัดการวิทยาลัยนวัตกรรมการผลิตขั้นสูง">คณะการบริหารและจัดการวิทยาลัยนวัตกรรมการผลิตขั้นสูง</option>
                                <option value="วิทยาลัยนานาชาติ">วิทยาลัยนานาชาติ</option>
                                <option value="วิทยาลัยนาโนเทคโนโลยีพระจอมเกล้าลาดกระบัง">วิทยาลัยนาโนเทคโนโลยีพระจอมเกล้าลาดกระบัง</option>
                                <option value="วิทยาลัยอุตสาหกรรมการบินนานาชาติ">วิทยาลัยอุตสาหกรรมการบินนานาชาติ</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <select class="form-control" id="sel1" name="category" required>
                                <option value="" disabled selected>เลือกหมวดหมู่</option>
                                <option value="วิทยาศาสตร์">วิทยาศาสตร์</option>
                                <option value="ภาษา">ภาษา</option>
                                <option value="คณิตศาสตร์">คณิตศาสตร์</option>
                                <option value="Computer and Technology">Computer and Technology</option>
                                <option value="มนุษยศาสตร์">มนุษยศาสตร์</option>
                                <option value="สังคม,การเมืองและการปกครอง">สังคม,การเมืองและการปกครอง</option>
                                <option value="ศิลปะ">ศิลปะ</option>
                                <option value="ธุรกิจ">ธุรกิจ</option>
                                <option value="ประวัติศาสตร์">ประวัติศาสตร์</option>
                                <option value="วิศวกรรมศาสตร์">วิศวกรรมศาสตร์</option>
                                <option value="เศรษฐศาสตร์">เศรษฐศาสตร์</option>
                                <option value="อื่นๆ">อื่นๆ</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <textarea class="form-control" rows="5" id="comment" placeholder="คำอธิบาย" name="description"></textarea>
                        </div>
                        <button id="button_win" class="btn btn-submit">Upload</button>
                        <br>
                    </div>

                </div>

            </div>
        </div>

    </form>


    <img class="img-fluid" src="images/background1.jpg">
    <div class="" style="padding-top: 10px; padding-bottom: 10px; background-color:  white">
        <h1>ใหม่ล่าสุด</h1>
        <form action="">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active" style="color: #edb91f">
                        <div class="row" style="padding-left: 5%;padding-top: 2%; padding-bottom: 2%">

                            <a class="col-3" style="text-align: center;" href="homepage.html">
                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-sceince.png">
                                <br>
                                <label style="color: #edb91f">วิทยาศาสตร์</label>
                            </a>

                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-math.png">
                                <br>
                                <label style="color: #edb91f">คณิตศาสตร์</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-lang.png">
                                <br>
                                <label style="color: #edb91f">ภาษา</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-human.png">
                                <br>
                                <label style="color: #edb91f">มนุษย์ศาสตร์</label>

                            </a>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row" style="padding-left: 5%;padding-top: 2%; padding-bottom: 2%">
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-law.png">
                                <br>
                                <label style="color: #edb91f">สังคมการเมือง การปกครอง</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-econ.png">
                                <br>
                                <label style="color: #edb91f">เศรษฐศาสตร์</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-business.png">
                                <br>
                                <label style="color: #edb91f">ธุรกิจ</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-history.png">
                                <br>
                                <label style="color: #edb91f">ประวัติศาสตร์</label>

                            </a>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row" style="padding-left: 5%;padding-top: 2%; padding-bottom: 2%">
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-art.png">
                                <br>
                                <label style="color: #edb91f">ศิลปะ</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-com.png">
                                <br>
                                <label style="color: #edb91f">คอมพิวเตอรืและเทคโนโลยี</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-eng.png">
                                <br>
                                <label style="color: #edb91f">วิศวะกรรมศาสตร์</label>

                            </a>
                            <a class="col-3" style="text-align: center;" href="#">

                                <img style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-etc.png">
                                <br>
                                <label style="color: #edb91f">อื่นๆ</label>

                            </a>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </form>
        
        <div class="" style="padding-top: 10px; padding-bottom: 10px; background-color: #f1f1f1">
            <div class="row">
                <div class="col-5">
                    <img  style="width: 150px; height: 150px;" src="images/icon_yellow/yellow-etc.png">
                </div>
                <div class="col-7">
                    <h3>เคล็ดลับการพักสายตา</h3>
                    <p> 
                        หลับตา 5-10 นาที<br>
                        ใช้มือสองข้างถูกันจนอุ่น หลับตา แล้วนำมือมาประคบที่ตาทิ้งไว้สักพัก<br>
                        สลับไปมองสีโทนเย็น เช่นสีเขียว,สีฟ้า<br>
                        กระพริบตา เพื่อให้น้ำตามาหล่อเลี้ยงดวงตาของเรา<br>
                    </p>
                </div>
                
            </div>
            
        </div>
        <form action="">
            <div class="" style="padding-top: 10px; padding-bottom: 10px; background-color: ">
                <h1>หมวดหมู่วิชา</h1>
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
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
        </form>
        
        <form action="">
            <div class="" style="padding-top: 10px; padding-bottom: 10px; background-color: #edb91f">
                <h1>คณะ</h1>
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
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
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
