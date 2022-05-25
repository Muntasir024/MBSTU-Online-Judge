<!DOCTYPE html>
<html lang="en">
    <head>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="jquery-3.4.1.min.js"></script>
        <script src="bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="datatables.min.css">
 
        <script src="datatables.min.js"></script>

<script type="text/javascript" >
    $(document).ready(function(){
        $('#example').dataTable();
    });
    </script>

        
        <style>
         body{
                background:#f0f0f0;
                /* fallback for old browsers */
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
            .container tr th{
                font-size: 20px;
            }
            .container tr td{
                font-size: 20px;
            }
            .container tr:hover{
                background-color:cornsilk;
            }
            .content h3{
                font-style:oblique;
                font-family:cursive;
                font-size: 30px;
                text-align: center;     
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
                        <li><a href="homepage.jsp">Home</a></li>
                        <li><a href="#">Problem Set</a></li>
                    </ul>    
                     <ul class="nav navbar-nav navbar-right">
                       
                        <li><a href="logout.jsp">Log Out</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="j">
            <div class="container text-center">
                <div class="content">
                    <p align ="center">
                        <img src="logo_large.jpg" class="img-rounded" alt="Logo_large" width="100" height="100">

                    </p>
                    <h3>MBSTU ONLINE JUDGE</h3>

                </div>
            </div>
        </div><br>
    
<div class="col-sm-3">
</div>
        
        <div class="container">
            <div class="col-sm-9">

<form action="InsertQuestion" method="post">
        <table id="example" class="table table-striped table-bordered " style="width:100%">
        <thead>
            <tr>
                <td>Serial no</td>
                <td>Name</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type="submit" name="number1" value="1001"></a></td>
                
                <td>Score Validation</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1002"></td>
                <td>Area of a Circle</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1003"></td>
                <td>Difference</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1004"></td>
                <td>Salary</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1005"></td>
                <td>Simple Calculate</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1006"></td>
                <td>Distance Between Two Points</td>
            </tr>
            
           <tr>
                <td><input type="submit" name="number1" value="1007"></td>
                <td>Time Conversion</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1008"></td>
                <td>Interval</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1009"></td>
                <td>Snack</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1010"></td>
                <td>Game Time</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10011"></a></td>
                
                <td>Score Validation</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10012"></td>
                <td>Area of a Circle</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10013"></td>
                <td>Difference</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10014"></td>
                <td>Salary</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10015"></td>
                <td>Simple Calculate</td>
                
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10016"></td>
                <td>Distance Between Two Points</td>
            </tr>
            
           <tr>
                <td><input type="submit" name="number1" value="10017"></td>
                <td>Time Conversion</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10018"></td>
                <td>Interval</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="10019"></td>
                <td>Snack</td>
            </tr>
            <tr>
                <td><input type="submit" name="number1" value="1020"></td>
                <td>Game Time</td>
            </tr>
           
        </tbody>
       
    </table>
        <script>
            $(document).ready(function() {
    $('#example').DataTable();
} );
            </script>
        </form>
            </div>
        </div>
      
    </body>
</html>