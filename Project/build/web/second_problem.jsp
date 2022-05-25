<!DOCTYPE html>
<html lang="en">
    <head>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="jquery-3.4.1.min.js"></script>
        <script src="bootstrap.min.js"></script>
        <style>
            /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
            .container-fluid{
                font-size: 15px;

                background-color:darkslategray;
            }
            .row{
                background-color:blanchedalmond;
            }

            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }
            .j{
                background-color:cornsilk;
            }
            .content p{
                font-style:oblique;
                font-family:cursive;
                font-size: 30px;

            }
            .con p{
                font-family:cursive;
                font-size: 30px;
            }
            .ppp h2{
                font-style:oblique;
                font-family:cursive;
            }
            .ppp h3{
                text-align:justify;

                font-size: 30px;
                font-family: calibri;
            }
            .ppp h4{
                text-align: left;
            }
            @media screen and (max-width: 767px) {
                .navi {
                    height: auto;
                    padding: 15px;
                }
                .row.content {height: auto;} 
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



        <div class="ppp">
            <div class="col-sm-4">

                <p align="left"><img src="logo_large.jpg" class="img-rounded" alt="Logo_large" width="100" height="100"></p>
                <hr>

                <h2>MBSTU ONLINE JUDGE</h2>

            </div>
            <div class="col-sm-4"> 
                <h3>Consumption</h3>
                <hr>
                <p align="justify">Calculate a car's average consumption being provided the total distance traveled (in Km) and the spent fuel total (in liters).</p>

                <hr>

                <h4>Input</h4>

                <p>The input file contains two values: one integer value X representing the total distance (in Km) and the second one is a floating point number Y  representing the spent fuel total, with a digit after the decimal point.<br>
                <br>a = 500,b = 350
                </p>
                <br>
                <h4>Output</h4>
                Present a value that represents the average consumption of a car with 3 digits after the decimal point, followed by the message "km/l".<br>
                <br>14.286 km/l
                <hr><a href="coding.jsp">
                    <button type="submit" class="btn btn-success">Submit</button></a>
            </div>
            <div class="col-sm-4"> 

            </div>
        </div>

    </body>
</html>
