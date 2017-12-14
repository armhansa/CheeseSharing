<%-- 
    Document   : header
    Created on : Dec 13, 2017, 8:58:44 PM
    Author     : HP_PC01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-lg header Absolute-Center">
    <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-brand-oporkak" >
            <a class="" href="homePage.jsp" style="margin-right: 0 ">
                <img src="images/logo.png" class="logo_size">
            </a>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <!-- Trigger the modal with a button -->
            <button id="btn_upload_test" type="button" class="btn btn_upload" data-toggle="modal" data-target="#myModal">Upload</button>
            <div class="dropdown">
                <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown"> -->
                <img class="user_profile dropdown-toggle" data-toggle="dropdown" src="images/icon-user.png"></a>
                <ul class="dropdown-menu">
                    <li><a href="editProfile.jsp">Profile</a></li>
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
                        
                        <input class="inputupload_win" id="uploadFile" placeholder="Choose File" disabled="disabled" />

                        <div class="fileUpload btn btn-sm" >
                            <span>Choose file</span>
                            <input id="uploadBtn" type="file" class="upload" name="file_uploaded" accept=".pdf" required />
                        </div>

                    </div>

                    <div class="form-group">
                        <input type="text" class="form-control" id="usr" placeholder="ชื่อไฟล์" name="title" required maxlength="45">
                    </div>

                    <div class="form-group">
                        <select class="form-control" id="sel1" name="faculty" required>
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
                        <textarea class="form-control" rows="5" id="comment" placeholder="คำอธิบาย" name="description" maxlength="200"></textarea>
                    </div>
                    <button id="button_win" class="btn btn-submit">Upload</button>
                    <br>
                </div>

            </div>

        </div>
    </div>

</form>


<link rel="stylesheet" type="" href="css/header-style.css">
<link href="https://fonts.googleapis.com/css?family=Kanit:300" rel="stylesheet">