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
                        
                        

                    </ul>
                     <ul class="nav navbar-nav navbar-right">
                        <li><a href="signUp.jsp">Signup</a></li>
                        <li><a href="login.jsp">Login</a></li>
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
               
                

                <h3> MBSTU ONLINE JUDGE </h3>

            </div>
        </div><br>

        <div class="main-w3layouts wrapper">

            <div class="container">

                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>

                    </ol>

                    <div class="carousel-inner">

                        <div class="item active">
                            <p align="center"> <img src="programmingconcept-.jpg" alt="Los Angeles" style="width:40%;"></p>

                        </div>

                        <div class="item">
                            <p align="center"><img src="computerw.jpg" alt="Chicago" style="width:40%;"></p>

                        </div>

                    </div>
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

        </div>
    </body>
</html>
