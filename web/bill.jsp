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
        .bill{
            background-color: #bdbdbd;
            padding: 30px;
            height:50%;
            
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
        <h2>Pharma Bill</h2>
        </center>
        <br>
        <br>
        
<% 
    String userid = request.getParameter("cusid");  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srv project","root", "root");
    Statement st1 = con.createStatement();
    Statement st2 = con.createStatement();
    Statement st3 = con.createStatement();
    ResultSet rs1;
    rs1 = st1.executeQuery("select * from cus_order where customer_id='" + userid +"'");
    if(rs1.next()){
        out.println(rs1.getString("customer_id"));
        ResultSet rs2;
    rs2 = st2.executeQuery("select * from stock where product='" + rs1.getString("product1") +"'");
//    int v1 = Integer.parseInt(rs2.getString("mrp"));
    if(rs2.next()){ 
                ResultSet rs3;
    rs3 = st3.executeQuery("select * from stock where product='" + rs1.getString("product2") +"'");
//    int v2 = Integer.parseInt(rs3.getString("mrp"));
//    int v = v1+v2;
    if(rs3.next()){    
    %>                    <table>
            <thead>
                <tr>
                    <th>S.NO</th>
                    <th>ITEM NAME</th>
                    <th>QUANTITY</th>
                    <th>M.R.P</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>1</td>
                    <td><% out.println(rs1.getString("product1")); %></td>
                    <td><% out.println(rs1.getString("quantity1")); %></td>
                    <td><% out.println(rs2.getString("mrp")); %></td>
                </tr>

                <tr>
                        <td>2</td>
                        <td><% out.println(rs1.getString("product2")); %></td>
                        <td><% out.println(rs1.getString("quantity2")); %></td>
                        <td><% out.println(rs3.getString("mrp")); %></td>
                </tr>
            </tbody>
        </table>
                <br>   
        <b>TOTAL : </b><% out.println(Integer.parseInt(rs2.getString("mrp")) * Integer.parseInt(rs1.getString("quantity1")) + Integer.parseInt(rs3.getString("mrp")) * Integer.parseInt(rs1.getString("quantity2")));}}}
    else{
        out.println("<h5>" + "Sorry there is no bill " + "</h5>");
    }
    %>
      </div>
        <%}%>
      </body>
    
    </html>