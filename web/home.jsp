<html>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
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
        .two {
            background-color: #eeeeee;
            padding: 20px;
        }
    </style>
</head>

<body>
    <nav>
        <div class="nav-wrapper">
            <a href="new.jsp" class="brand-logo center">Pharma</a>
        </div>
    </nav>

    <div class="container" id="main">
        <div class="row">
            <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s6"><a class="active" href="#test1">ADMIN</a></li>
                    <li class="tab col s6"><a href="#test2">EMPLOYEE</a></li>
                </ul>
                <br>

                <div id="test1" class="col s12">
                    <div class="one">
                        <br>
                        <br>
                        <center>
                            <h3>ADMIN LOGIN</h3>

                            <img src="http://www.klbs.in/img/lohinavtar.png" height="150" width="150" />
                            <img src="http://www.nbkrist.org/img_avatar2.png" height="150" width="150" />
                            <img src="http://www.slbc.lk/ta/images/services/thendral/announcers/default-avatar-rapper-guy.png" height="150" width="150"
                            />
                            <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
                        </center>
                        <br>
                        <form action="access_admin.jsp">
                            <p>Enter the Username :</p>
                            <input type="text" name="user">
                            <p>Enter the Password :</p>
                            <input type="password" name="pwd">
                            <input type="submit" value="submit">
                        </form>
                    </div>
                </div>
                <div id="test2" class="col s12">

                    <div class="two">
                        <br>
                        <br>
                        <center>
                            <h3>EMPLOYEE LOGIN</h3>

                            <img src="http://www.tkbm.se/wp-content/uploads/2015/09/man_green2.jpg" height="150" width="150" />
                            <img src="http://www.rainbow180.com/public/images/avatar6.png" height="150" width="150" />
                            <img src="https://www.localseosearch.ca/wp-content/uploads/avatar-2.png" height="150" width="150"
                            />
                            <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
                        </center>
                        <br>
                        <form action="access_emp.jsp">
                            <p>Enter the Username :</p>
                            <input type="text" name="user">
                            <p>Enter the Password :</p>
                            <input type="password" name="pwd">
                            <input type="submit" value="submit">
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>
</body>

</html>