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
	</style>
</head>

<body>
    
    <nav>
        <div class="nav-wrapper">
            <a href="new.jsp" class="brand-logo center">Pharma</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href='logout.jsp'>Log out</a></li>
            </ul>
        </div>
    </nav>

  <div class="container" id="main">
      

      <form action="check.jsp">
      <input type="text" name="name"  placeholder="Type the name of medicine....">
  <input type="submit" value="Submit">
</form>
  <br>
  <br>
    <h3>This is the list of Products</h3>
  	<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from product_gen");
    if(rs.next()){
        %>                    <table class="striped bordered" style="width:100%">
            <thead>
                        <tr>
                            <th>Product ID</th>
                            <th>Product</th>
                            <th>Company</th>
                        </tr>
            </thead>
                        <% while(rs.next()){%>
            <tbody>
                        <tr>
                            <td> <% out.println(rs.getString("product id")); %></td>
                            <td> <% out.println(rs.getString("product")); %></td>
                            <td> <% out.println(rs.getString("company")); %></td>
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
</body>

</html>