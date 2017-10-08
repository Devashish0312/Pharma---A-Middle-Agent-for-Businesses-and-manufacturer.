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
		height: 100%;
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
      <center>
          <span><h3>This is the list of Companies</h3></span>
  
  
      </center>
  <br>
  <br>
  	<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from manufacturer");
    if(rs.next()){
        %>                    <table class="striped bordered" style="width:100%">
            <thead>
                        <tr>
                            <th>Company</th>
                            <th>Address</th>
                            <th>Contact no</th>
                            <th>Website</th>
                        </tr>
            </thead>
                        <% while(rs.next()){%>
            <tbody>
                        <tr>
                            <td> <% out.println(rs.getString("company")); %></td>
                            <td> <% out.println(rs.getString("address")); %></td>
                            <td> <% out.println(rs.getString("contact no")); %></td>
                            <td> <% out.println("<a href='"+"https://" + rs.getString("web") +"'>"+rs.getString("web")+"</a>"); %></td>
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