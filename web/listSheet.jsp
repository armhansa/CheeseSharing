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
        <%@include file="header.jsp" %>

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
