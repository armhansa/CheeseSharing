<%-- 
    Document   : listSheet
    Created on : Dec 13, 2017, 11:43:16 AM
    Author     : armha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>CheeseSharing</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
                            <li><a href="/../LogoutServlet">Logout</a></li>
                        </ul>
                    </div>

                </ul>
            </div>
        </nav>
        <form action="UploadServlet" method="POST">
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

                                <div class="fileUpload btn btn-sm">
                                    <span>Choose file</span>
                                    <input id="uploadBtn" type="file" class="upload" />
                                </div>

                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" id="usr" placeholder="ชื่อไฟล์" name="title">
                            </div>

                            <div class="form-group">
                                <select class="form-control" id="sel1" name="faculty">
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
                                <select class="form-control" id="sel1" name="category">
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

        <div class="type-subject">
            <img class="img-subject" src="images/header/header-art.png">
        </div>
        <div class="list-sheet">
            <!--  loop very loop  -->
            <c:forEach var="list" items="${filter.rows}">
                <div class="sheet">
                    <div class="detail">
                        <h3 style="margin-left: 10px">${list.Title}</h3>
                        <p style="margin-left: 10px">ลงโดย : ${list.USERS_Username}</p>
                    </div>
                    <div class="open-file">
                        ผู้เข้าชม ${list.ViewCount} คน
                        <a href="viewFile.jsp?id=${list.idSheet}" class="open-btn btn btn-warning" type="submit" style="margin-left: 20px; width: 70px;" >เปิด</a>
                    </div>
                </div>
            </c:forEach>
        </div>

        <!-- css -->
        <link rel="stylesheet" type="" href="css/sheetStyle.css">
        <link rel="stylesheet" type="" href="css/win-style.css">

        <!--js-->
        <script type="text/javascript" src="js/js-win.js"></script>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    </body>
</html>
