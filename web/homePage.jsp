<%@page import="java.util.List"%>
<%@page import="model.Sheets"%>
<%@page import="model.Sheet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%String user = (String)session.getAttribute("Username");
if(user==null){
    response.sendRedirect("entrance.jsp");
}%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheeseSharing</title>
        <!-- Required meta tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    </head>

    <body>
        <%@include file="header.jsp" %></%@include>

        <img class="img-fluid" src="images/background1.jpg">
        <div id="new-container" class="row-container">
            <h1 id="new">ใหม่ล่าสุด</h1>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row row-set">

                            <%
                                List<Sheet> sheets = Sheets.getInstance().getSheets();
                                int index = sheets.size();
                                while (--index >= 0 && sheets.size() - index <= 12) {
                            %>
                            <a class="item col-3" href="viewFile.jsp?id=<%= sheets.get(index).getIdSheet()%>">
                                <h2><%=(sheets.size() - index) + ". " + sheets.get(index).getTitle()%></h2>
                                <img src="images/icon_yellow/yellow-<%= thaiName.getIconFromCategory(sheets.get(index).getCategory()) %>.png"> <br>
                                <p><%= sheets.get(index).getDescription()%></p>
                            </a>
                            <% if ((sheets.size() - index) % 4 == 0
                                        && sheets.size() - index != 12
                                        && index != 0) { %>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row row-set">
                            <% }
                                }%>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span id="new-prev-icon" class="" aria-hidden="true">
                        <image style="width: 50px; opacity: 0.5" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-left-128.png"/>
                    </span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="" aria-hidden="true">
                            <image style="width: 50px;opacity: 0.5" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-right-128.png"/>
                    </span>
                    <span class="sr-only">Next</span>
                </a>  
            </div>


        </div>

        <div class="row-container" style="padding-top: 2%; padding-bottom: 2%; background-color: #f1f1f1">
            <div class="row" style="align-items: center">
                <div class="col-4">
                    <img style="width: 150px; height: 150px; float: right" src="images/icon-reading.png">
                </div>
                <div class="col-8">
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

        <div class="row-container" style="padding-top: 10px; padding-bottom: 10px">
            <h1 id="cate">หมวดหมู่วิชา</h1>
            <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">

                <div class="carousel-inner">
                    <div class="carousel-item active" style="color: #edb91f">
                        <div class="row row-set">

                            <%  for (int i = 0; i < 6; i++) {%>
                            <a class="item col-2" href="listSheet.jsp?type=category&value=<%= i%>">
                                <img src="images/icon-gray/gray-<%= thaiName.getCategoryIcon(i)%>.png">
                                <br>
                                <% if (i == 4) {%>
                                <label >สังคม การเมือง <br>และการปกครอง</label>
                                    <% } else {%>
                                <label ><%= thaiName.getCategory(i)%></label>
                                <% } %>
                            </a>
                            <% }%>

                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="row row-set">

                            <%  for (int i = 6; i < 12; i++) {%>
                            <a class="item col-2" href="listSheet.jsp?type=category&value=<%= i%>">
                                <img src="images/icon-gray/gray-<%= thaiName.getCategoryIcon(i)%>.png">
                                <br>
                                <% if (i == 9) {%>
                                <label>คอมพิวเตอร์<br>และเทคโนโลยี</label>
                                    <% } else {%>
                                <label ><%= thaiName.getCategory(i)%></label>
                                <% } %>
                            </a>
                            <% }%>

                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                    <span class="" aria-hidden="true">
                        <image style="width: 50px;opacity: 0.5" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-left-128.png"/>
                        
                    </span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
                    <span class="" aria-hidden="true">
                            <image style="width: 50px; opacity: 0.5" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-right-128.png"/>
                    </span>
                    <span class="sr-only">Next</span>
                </a>

            </div>
        </div>

        <div class="row-container faculty">
            <h1 id="fac">คณะ</h1>
            <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">



                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row row-set">
                            
                            <%  for (int i = 0; i < 6; i++) {%>
                                <a class="item-f col-2" href="listSheet.jsp?type=faculty&value=<%= i %>">
                                    <img  src="images/logo-faculty/logo-<%= thaiName.getFacultyIcon(i) %>.png">
                                    <br>
                                    <% if(i == 2) { %>
                                        <label>คณะครุศาสตร์<br>อุตสาหกรรม</label>
                                    <% } else {%>
                                        <label ><%= thaiName.getFaculty(i) %></label>
                                    <% } %>
                                </a>
                            <% }%>

                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row row-set" style="padding-left: 15%">
                            
                            <%  for (int i = 6; i < 11; i++) {%>
                                <a class="item-f col-2" href="listSheet.jsp?type=faculty&value=<%= i %>">
                                    <img  src="images/logo-faculty/logo-<%= thaiName.getFacultyIcon(i) %>.png">
                                    <br>
                                    <% if(i == 8) { %>
                                        <label>วิทยาลัยนวัตกรรม<br>การผลิตขั้นสูง</label>
                                    <% } else {%>
                                        <label ><%= thaiName.getFaculty(i) %></label>
                                    <% } %>
                                </a>
                            <% }%>
                            
                        </div>


                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
                        <span class="" aria-hidden="true">
                            
                        <image style="width: 50px;opacity: 0.5" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-left-128.png"/>
                        </span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
                        <span class="" aria-hidden="true">
                            <image style="width: 50px;opacity: 0.5" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-right-128.png"/>
                        </span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

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
            <link rel="stylesheet" type="" href="css/homePageStyle.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>

</html>
