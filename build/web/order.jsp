
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
		height: 100%;
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
      <h3>Enter the details below </h3>
      <br>
  </center>
    
        <form class="col s12" action="trans.jsp">
          <div class="row">
                <div class="input-field col s6">
                        <select name="Customer">
                            <option value="" disabled selected>Customer ID</option>
                              	<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customer id");
    if(rs.next()){

while(rs.next())
{
String fname = rs.getString("customer id") + " - "+rs.getString("Name"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}

    }
%>
</select>


      </div>
  </div>

          <div class="row">
                <div class="input-field col s6">
                        <select name="product1">
                            <option value="" disabled selected>Product 1</option>
                              	<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st1 = con.createStatement();
    ResultSet rs1;
    rs1 = st1.executeQuery("select * from stock");
    if(rs1.next()){

while(rs1.next())
{
String fname = rs1.getString("product"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}

    }
%>
</select>


      </div>
<div class="input-field col s6">
    <input type ="text" name="quantity1" placeholder="quantity">
</div>
          </div>
<div class="row">
                <div class="input-field col s6">
                        <select name="product2">
                            <option value="" disabled selected>Product 2 </option>
                              	<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st3 = con.createStatement();
    ResultSet rs3;
    rs3 = st3.executeQuery("select * from stock");
    if(rs3.next()){

while(rs3.next())
{
String fname = rs3.getString("product"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}

    }
%>
</select>


      </div>

<div class="input-field col s6">
    <input type ="text" name="quantity2" placeholder="quantity">
</div>
          </div>
<input type="submit" value ="submit">
        </form>
          </div>


    
  <script>
        $(document).ready(function() {
    $('select').material_select();
  });
     
  </script>
  <%}%>
  </body>

</html>