<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View File</title>
    </head>
    <body>

        <%
            String id = request.getParameter("id");

            Blob file = null;
            byte[] fileData = null;

            try {
                Connection conn = (Connection) getServletContext().getAttribute("Connection");

                String sqlString = "SELECT File, ViewCount, USERS_Username FROM SHEETS WHERE idSheet = " + id;
                int viewCount;
                String uploader;
                out.println(sqlString);
                Statement myStatement = conn.createStatement();

                ResultSet rs = myStatement.executeQuery(sqlString);

                if (rs.next()) {
                    file = rs.getBlob("File");
                    fileData = file.getBytes(1, (int) file.length());
                    viewCount = rs.getInt("ViewCount");
                    uploader = rs.getString("USERS_Username");
                } else {
                    out.println("file not found!");
                    return;
                }

                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "inline");
                response.setContentLength(fileData.length);

                OutputStream output = response.getOutputStream();
                output.write(fileData);

                output.flush();
                
                if(!session.getAttribute("Username").equals(uploader)) {
                    Statement stmt = conn.createStatement();
                    stmt.executeUpdate("UPDATE SHEETS "
                            + "SET ViewCount = "+(++viewCount)+" "
                            + "WHERE idSheet = "+id);
                }

            } catch (SQLException ex) {
                Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);
            }
        %>

        <br><br>
        <a href="main_page.jsp">Go to Main Page...</a>        

        <div style="position: relative">
            <div style="position: fixed ; bottom: 0 ; width:100% ; text-align:center ">
                <p><a href="https://www.youtube.com/user/TechWorld3g?sub_confirmation=1">CLICK HERE TO SUBSCRIBE</a></p>
            </div>
        </div>

    </body>
</html>