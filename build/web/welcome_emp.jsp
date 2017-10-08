<html>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        body {
            background-color: #ef9a9a;
            background-repeat: no-repeat;
            background-size: 100%;
            font-family: 'Raleway', sans-serif;
        }


        #main {
            background-color: white;
            padding: 30px;
            opacity: 20%;
            height: 100%;
        }

        .one {
            background-color: #e0e0e0;
            padding: 20px;
        }
    </style>
</head>

<body>
    <%
         if ((session.getAttribute("userid1") == null) || (session.getAttribute("userid1") == "")) {
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
        <div class="row">
            <div class="col s12">
                <center>
                    <h3>Welcome <%=session.getAttribute("userid1")%></h3>
                </center>
        
                <center>
                    <br>
                    <br>
                    <br>
                    <form action="Companies.jsp">
                    <button class="btn waves-effect waves-light" type="submit" name="action">Companies
                            <i class="material-icons right">send</i>
                          </button>
                    </form><br>
                          <br>
                          <form action="Products.jsp">
                          <button class="btn waves-effect waves-light" type="submit" name="action">Products
                                <i class="material-icons right">send</i>
                              </button>
                          </form>
                </center>
            </div>
        </div>
                <%
            }
        %>

    </div>
</body>

</html>