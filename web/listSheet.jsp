<%@page import="tool.ThaiName"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%String user = (String)session.getAttribute("Username");
if(user==null){
    response.sendRedirect("entrance.jsp");
}%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>CheeseSharing</title>
        <!-- Required meta tags -->
        <meta charset="utf-8"
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link href="https://fonts.googleapis.com/css?family=Kanit:300" rel="stylesheet">

    </head>
    <body style="font-family: 'Kanit'">
        <%@include file="header.jsp" %>
        
        <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://161.246.49.11:3306/cheet_sharing?autoReconnect=true&characterEncoding=UTF-8&useSSL=false"
                   scope="session" user="root" password="Evosp1r1t"/>

        <%  int filterIndex = Integer.parseInt(request.getParameter("value"));
            String type = request.getParameter("type");
            String filter;
            String iconFilter;
            if ("faculty".equals(type)) {
                filter = thaiName.getFaculty(filterIndex);
                iconFilter = thaiName.getFacultyIcon(filterIndex); %>
                <sql:query var="filter" dataSource="${dataSource}">
                    SELECT * FROM SHEETS WHERE Faculty = '<%= filter %>';
                </sql:query>
            <% } else {
                filter = thaiName.getCategory(filterIndex);
                iconFilter = thaiName.getCategoryIcon(filterIndex); %>
                <sql:query var="filter" dataSource="${dataSource}">
                    SELECT * FROM SHEETS WHERE Category = '<%= filter %>';
                </sql:query>
            <% }%>
            
        

        <div class="type-subject">
            <img class="img-subject" src="images/header/header-<%= type %>-<%= iconFilter %>.png">
        </div>
        <div class="list-sheet">
            <!--  loop very loop  -->

            <div class="h-line"></div>

            <c:forEach var="list" items="${filter.rows}">
                <div class="sheet">
                    <div class="detail">
                        <h3 style="margin-left: 10px">${list.Title}</h3>
                        <p style="margin-left: 10px">ลงโดย : ${list.USERS_Username}</p>
                    </div>
                    <div class="open-file">
                        จำนวนครั้งที่เข้าชม : ${list.ViewCount} ครั้ง
                        <a href="viewFile.jsp?id=${list.idSheet}" class="btn click-open" style="margin-left: 20px; width: 70px;" >เปิด</a>
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
