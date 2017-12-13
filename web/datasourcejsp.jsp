<%-- 
    Document   : datasourcejsp
    Created on : Dec 13, 2017, 5:07:43 PM
    Author     : HP_PC01
--%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://161.246.49.11:3306/cheet_sharing?autoReconnect=true&characterEncoding=UTF-8&useSSL=false"
                   scope="session" user="root" password="Evosp1r1t"/>
<!DOCTYPE html>
<!--  -->
<% if("faculty".equals(request.getParameter("type"))) { %>
<sql:query var="filter" dataSource="${dataSource}">
    SELECT * FROM SHEETS WHERE Faculty = '<%= request.getParameter("filter") %>';
</sql:query>
<% } else { %>
<sql:query var="filter" dataSource="${dataSource}">
    SELECT * FROM SHEETS WHERE Category = '<%= request.getParameter("filter") %>';
</sql:query>