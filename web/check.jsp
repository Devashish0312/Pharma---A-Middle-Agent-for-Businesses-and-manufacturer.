

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <style>
    	body {
/*    background-image: url("http://www.hec.edu/var/corporate/storage/images/knowledge/strategie-et-management/innovation-et-entrepreneuriat/l-optimisme-des-entrepreneurs/399357-2-eng-GB/Entrepreneurial-Optimism_knowledge_standard.jpg");*/
    	background-color: #ef9a9a;
    background-repeat: no-repeat;
    background-size: 100%;
	}


	#main{
		background-color: white;
		padding: 30px;
		opacity: 20%;
		height: 100%;
	}
	</style>
</head>

<body>
	<nav>
    <div class="nav-wrapper">
      <a href="new.jsp" class="brand-logo">Job Portal</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
      	<li><a href="ab.jsp">About Us</a></li>
        <li><a href="cmn.jsp">Companies</a></li>
        <li><a href="job.jsp">JOB</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
      </ul>
    </div>
  </nav>

  <div class="container" id="main">
<% 
    String userid = request.getParameter("name");  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from stock where product='" + userid +"'");
    if(rs.next()){
        %>                    <table  style="width:100%">
                        <tr>
                            <th>product id</th>
                            <th>product</th>
                            <th>company</th>
                            <th>mrp</th>
                            <th>expiry date</th>
                        </tr>
                                    <tr>
                <td> <% out.println(rs.getString("product id")); %></td>
                <td> <% out.println(rs.getString("product")); %></td>
                <td> <% out.println(rs.getString("Company")); %></td>
                <td> <% out.println(rs.getString("mrp")); %></td>
                
                <td> <% out.println(rs.getString("expiry date")); %></td>
            </tr>
     
                        <% while(rs.next()){%>
            
 
            <tr>
                <td> <% out.println(rs.getString("product id")); %></td>
                <td> <% out.println(rs.getString("product")); %></td>
                <td> <% out.println(rs.getString("Company")); %></td>
                <td> <% out.println(rs.getString("mrp")); %></td>
                
                <td> <% out.println(rs.getString("expiry date")); %></td>
            </tr>
     
       

        <%}%>

      </table>
        <%}
    else{
        out.println("<h5>" + "Sorry the product you searched for is not available in the stock right now.." + "</h5>");
    }
    %>  
  	</div>
</body>

</html>
