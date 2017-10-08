<%-- 
    Document   : customer_add
    Created on : 4 Oct, 2017, 10:51:02 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
            <%
         if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %>
        You are not logged in<br/>
        <a href="home.jsp">Please Login</a>
        <%} else {
        %>
<%
    String id = request.getParameter("id");    
    String name = request.getParameter("name");
    String loc = request.getParameter("Location");
    String status = request.getParameter("status");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    			PreparedStatement ps =con.prepareStatement("insert into customer values(?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, loc);
			ps.setString(4, status);
    			ps.execute();
			con.close();
        out.println("<h3>"+"Customer added"+"</h3>");

%>
<%}%>
    </body>
</html>
