<!DOCTYPE html>
<html lang="en">
    <head>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="jquery-3.4.1.min.js"></script>
        <script src="bootstrap.min.js"></script>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">

        <style>
            body{
                background:#f0f0f0;
                
                background: -webkit-linear-gradient(to top, #f0f0f0, #ccccff);
                background: -moz-linear-gradient(to top, #f0f0f0, #ccccff);
                background: -o-linear-gradient(to top, #f0f0f0, #ccccff);
                background: linear-gradient(to top, #f0f0f0, #ccccff);
                background-size: cover;
                background-attachment: fixed;
                font-family: 'Roboto', sans-serif;
            }

            .container-fluid{
                font-size: 15px;

                background-color:darkslategray;
            }

            .content h3{
                font-style:oblique;
                font-family:cursive;
                font-size: 30px;
                text-align: center;     
            }
            .content img{
                margin: 10px;
            }

        </style>
    </head>
    <body>


        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>

                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Home</a></li>
                        <li><a href="problem_set.jsp">Problem Set</a></li>

                    </ul>
                     <ul class="nav navbar-nav navbar-right">
                        <li><a href="logout.jsp">Log Out</a></li>
                        

                    </ul>

                </div>
            </div>
        </nav>
        <br>  
        <div class="container text-center">
            <div class="content">
                <p align ="center">
                    <img src="logo_large.jpg" class="img-rounded" alt="Logo_large" width="100" height="100">

                </p>
               
                <h3> MBSTU ONLINE JUDGE!</h3>
                <br><br><br>
                <h4>Do you really want to logout?</h4>
                <form action="LogOut" method="get">
                    <button type="submit" class="btn btn-success">yes</button></form>
                <h4 align="center">OR</h4>
                <a href="problem_set.jsp">
        <button type="submit" class="btn btn-success">No</button></a>
                
               
            </div>
        </div><br>

        
    </body>
</html>
