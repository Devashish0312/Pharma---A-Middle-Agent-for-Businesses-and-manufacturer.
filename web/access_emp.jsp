<%@ page import ="java.sql.*" %>
<%
    String userid1 = request.getParameter("user");    
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from emp_login where user='" + userid1 + "' and pass='" + pwd + "'");
    if (rs.next()) {
       session.setAttribute("userid1", userid1);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("welcome_emp.jsp");
    } else {
        out.println("Invalid password try again</a>");
    }
%>