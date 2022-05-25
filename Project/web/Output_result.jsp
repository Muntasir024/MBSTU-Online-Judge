<!DOCTYPE html>
<html lang="en">
    <head>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="jquery-3.4.1.min.js"></script>
        <script src="bootstrap.min.js"></script>
        <style>

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
                        <li><a href="homepage">Home</a></li>
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

                <h1>Output</h1>
                <hr>
                <%
                   String name = request.getAttribute("label").toString();
                       out.println(name);
                
             
                %>
                
            </div>
            <div class="col-sm-4"></div>
        </div> 


    </body>
</html>
