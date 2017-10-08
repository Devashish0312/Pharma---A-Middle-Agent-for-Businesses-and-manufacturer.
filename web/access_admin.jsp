<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("user");    
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin_login where username='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
       session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("welcome_admin.jsp");
    } else {
        out.println("Invalid password try again</a>");
    }
%>