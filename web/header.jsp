<%-- 
    Document   : header
    Created on : Dec 13, 2017, 8:58:44 PM
    Author     : HP_PC01
--%>

<%@page import="tool.ThaiName"%>
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
                            <%  ThaiName thaiName = ThaiName.getInstance();
                                for (int i = 0; i < thaiName.getFacultyCount(); i++) {%>
                                <option value="<%= i%>"><%= thaiName.getFaculty(i)%></option>
                            <% }%>
                        </select>
                    </div>

                    <div class="form-group">
                        <select class="form-control" id="sel1" name="category" required>
                            <option value="" disabled selected>เลือกหมวดหมู่</option>
                            <%  for(int i=0; i<thaiName.getCategoryCount(); i++) { %>
                                <option value="<%= i %>"><%= thaiName.getCategory(i) %></option>
                            <% } %>
                            
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