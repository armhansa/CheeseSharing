<%@page import="model.User"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://161.246.49.11:3306/cheet_sharing?autoReconnect=true&characterEncoding=UTF-8&useSSL=false"
scope="session" user="root" password="Evosp1r1t"/>

<sql:query var="query_profile" dataSource="${dataSource}">
SELECT * FROM USERS WHERE Username = '<%= session.getAttribute("Username") %>';
</sql:query>
<% User user = (User) session.getAttribute("User"); %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CheeseSharing</title>
</head>
<body>
    <%@include file="header.jsp" %>

    <div class="row edit-mid edit_margin-top" style="margin-top: 30px;">
        <span class="col-5 Absolute-Center">

            <div class="img-profile">
                <div style="font-family: 'Kanit'; color: #edb91f; text-align: right;" var="list" item="query_profile.rows">
                    <label id="username" class="col-11 header-edit"><%= user.getUserName().toUpperCase()%></label>
                    <div  style="display: inline-flex;color: #868686;text-align:  center;margin: 2%;">
                        <h3 class="col-6" style="margin: 0;" ><%= user.getFirstName()%></h3>
                        <h3 class="col-6" style="margin: 0;"><%= user.getLastName()%></h3>
                    </div>
                </div>
                <img src="images/icon-user-sq.png" style="width: 40%; float: right; opacity: 0.3;" >
            </div>

        </span>
        <span class="col-5 bg_color edit_margin-top Absolute-Center" style="/*margin: auto;*/">
            <div class="col-10" style="background-color: #edb91f; margin: auto;">
                <form action="EditProfileServlet" method="post" var="list" item="query_profile.rows">
                    <div style="padding: 10%">
                        <h1 style="color:#fff; opacity: 0.3;">EDIT PROFILE</h1>
                        <input type="text" name="firstName" value="<%= user.getFirstName()%>" class="col-12 form-control margin_form"><br>
                        <input type="text" name="lastName" value="<%= user.getLastName()%>"  class="col-12 form-control margin_form"><br>
                        <input type="password" name="oldPassword" placeholder="Old Password" class="col-12 form-control margin_form" pattern=".{6,}" title="กรุณากรอกรหัสผ่านมากกว่า 6 ตัว"><br>
                        <input type="password" name="newPassword" placeholder="New Password" class="col-12 form-control margin_form" pattern=".{6,}" title="กรุณากรอกรหัสผ่านมากกว่า 6 ตัว"><br>
                        <input type="Email" name="email" value="<%= user.getEmail() %>" class="col-12 form-control margin_form" disabled><br>
                        <select style="height: 35px" class="col-12 form-control margin_form" name="faculty">
                            <option value="" disabled selected> เลือกคณะ </option>
                            <%  for(int i=0; i<thaiName.getFacultyCount(); i++) { %>
                            <option value="<%= i %>" <%= thaiName.getFaculty(i).equals(user.getFaculty()) ? "selected" : ""%>>
                                <%= thaiName.getFaculty(i) %>
                            </option>
                            <% } %>
                        </select>
                        <button class="btn col-7" style="margin: 10% 20% 10% 20%; background-color: #848484; color:white;">Submit</button>
                    </div>
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


    <link href="https://fonts.googleapis.com/css?family=Kanit:300" rel="stylesheet">
</body>
</html>
