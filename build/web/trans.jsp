<%-- 
    Document   : trans
    Created on : 5 Oct, 2017, 10:27:08 PM
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
    String c = request.getParameter("Customer");
    String p1 = request.getParameter("product1");
    String p2 = request.getParameter("product2"); 
    String q1 = request.getParameter("quantity1"); 
    String q2 = request.getParameter("quantity2"); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    			PreparedStatement ps =con.prepareStatement("insert into cus_order values(?,?,?,?,?)");
			ps.setString(1, c);
			ps.setString(2, q1);
			ps.setString(3, p2);
			ps.setString(4, q2);
                        ps.setString(5, p1);
                        
    			ps.execute();
			con.close();
                        out.println("<h3>"+"Order added"+"</h3>");

%>

<h3>Check out the bill :</h3>
<form action="bill.jsp">
    <input type="text" name="cusid">
    <input type="submit" value="submit">
</form>
<%}%>
    </body>
</html>
