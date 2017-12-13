<%-- 
    Document   : datasourcejsp
    Created on : Dec 13, 2017, 5:07:43 PM
    Author     : HP_PC01
--%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--  -->
<% if("faculty".equals(request.getParameter("type"))) { %>






<sql:query var="new_file" dataSource="${dataSource}">
    SELECT * FROM SHEETS ORDER BY ID DESC
</sql:query>
