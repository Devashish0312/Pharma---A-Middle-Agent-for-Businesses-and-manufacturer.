<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <style>
    	body {
/*    background-image: url("http://www.hec.edu/var/corporate/storage/images/knowledge/strategie-et-management/innovation-et-entrepreneuriat/l-optimisme-des-entrepreneurs/399357-2-eng-GB/Entrepreneurial-Optimism_knowledge_standard.jpg");*/
    	background-color: #ef9a9a;
    background-repeat: no-repeat;
    background-size: 100%;
    font-family: 'Raleway', sans-serif;
	}


	#main{
		background-color: white;
		padding: 30px;
		opacity: 20%;
/*		height: 100%;*/
	}
            .insert{
        padding-left: 200px;
        padding-right: 200px;
    }
	</style>
</head>

<body>
        <%
         if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %>
        You are not logged in<br/>
        <a href="home.jsp">Please Login</a>
        <%} else {
        %>
    
    <nav>
        <div class="nav-wrapper">
            <a href="new.jsp" class="brand-logo center">Pharma</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href='logout.jsp'>Log out</a></li>
            </ul>
        </div>
    </nav>

  <div class="container" id="main">
      
      
      <center>
          <h3>Enter the details to add a new customer</h3>
      </center>
      <div class="insert">
      <form action="customer_add.jsp">
      <input type="text" name="id"  placeholder="id">
      <input type="text" name="name"  placeholder="Name ">
      <input type="text" name="Location"  placeholder="location">
      <input type="text" name="status"  placeholder="status">

  <input type="submit" value="Submit">
</form>
      </div>
  <br>
  <br>
    <h3>This is the list of Customers</h3>
  	<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customer");
    if(rs.next()){
        %>                    <table class="striped bordered" style="width:100%">
            <thead>
                        <tr>
                            <th>Customer ID</th>
                            <th>Name</th>
                            <th>Location</th>
                            <th>Status</th>
                        </tr>
            </thead>
                        <% while(rs.next()){%>
            <tbody>
                        <tr>
                            <td> <% out.println(rs.getString("customer ID")); %></td>
                            <td> <% out.println(rs.getString("Name")); %></td>
                            <td> <% out.println(rs.getString("Location")); %></td>
                            <td> <% out.println(rs.getString("Status")); %></td>
                        </tr>
            </tbody>
     
       

        <%}%>

      </table>
        <%}
    else{
        out.println("<h5>" + "Sorry no company names matched" + "</h5>");
    }
    %>
  </div>
  <%}%>
</body>

</html>