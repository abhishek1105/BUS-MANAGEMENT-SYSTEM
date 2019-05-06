
<%@page import="Model.DatabaseData"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <title>HOME || ADMIN</title>
        <script>
            window.onload = function(){
                document.getElementById('option2').style.display = 'none';
                document.getElementById('option3').style.display = 'none';
//                document.getElementById('option4').style.display = 'none';
                document.getElementById('option5').style.display = 'none';
                document.getElementById('option6').style.display = 'none';
              
            };
                </script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="jquery.js">
            </script>
               <script src="myAdmin.js"></script>
               <link rel="stylesheet" href="admin.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
        <style>
            body{
                padding: 5px;
                background-color: white;
            }
            .header{
                display: -webkit-flex; /* Safari */
                -webkit-flex-wrap: wrap; /* Safari 6.1+ */
                display: flex;
                flex-wrap: wrap;
                height: 110px;
                padding:40px;
                box-sizing: border-box;
                background-color:#232f3e;
            }
            .search-bar{
                margin-top: 20px;
            }
            .adm{
                font-size: 20px;
                color:white;
            }
            hr {
                display: block;
  margin-top: 0.5em;
  margin-bottom: 0.5em;
  margin-left: auto;
  margin-right: auto;
  border-style: inset;
  border-width: 1px;
}
            .header h1{
                font-family: "Allerta Stencil", Sans-serif;
                font-size: 50px;
                text-align: center;
                color:white;
                line-height: 0;
            }
            .adm{
                font-size: 20px;
                color:white;
                display: flex;
                flex-wrap:wrap;
                margin-top: 15px;
                padding:none;
            
            }
            .formsearch {
  /* This bit sets up the horizontal layout */
  display:flex;
  flex-direction:row;
  
  /* This bit draws the box around it */
  border:1px solid grey;
  /* I've used padding so you can see the edges of the elements. */
 
}
  

input {
  /* Tell the input to use all the available space */
  flex-grow:2;
  width:300px;
  height:40px;
  /* And hide the input's outline, so the form looks like the outline */
  border:none;
}

input:focus{
  outline: none;
}

.searchh {
  /* Just a little styling to make it pretty */
  border:1px solid blue;
  background:blue;
  color:white;
  width:100px;
  cursor: pointer;
}

            
            .container{
                height: 500px;
                display: flex;
                flex-direction: row;
                flex-wrap: wrap;
            }
            .container div{
                font-size:20px;
            }
            .leftflex{
                padding:5px;
                flex:1
            }
            .rightflex{
                padding: 5px;
                flex:5;
            }
            
            .midrightflex{
                height: 100%;
    width:100%;
    display: inline-block;
   
      position: relative;
}
#option1,#option2,#option3,#option4,#option5,#option6,#option7{
    background-color:#F8F8FF;
    height:100%;
    width:100%;
    border:1px solid black;
    display: inline-block;
    padding:5px;
    display: flex;
}

.demo{
    display: flex;
    background-color:#F0F8FF;
    
}
        .demo a{
           border-bottom: 3px solid black;
            color:black;
            text-decoration: none;
            padding:10px;
           
            
        }
        .demo a:hover{
            transition: 0.5s;
            background-color: red;
            color:white;
        }
        .op1-text{
            font-size: 25px;
        }
        .signupreq{
            border:1px solid black;
            border-radius: 5px;
            padding: 5px;
            width: 100%;
            background-color: white;
            height: 20%;
            text-align:center;
            font-size:80px;
        }
        .op1-left{
            flex:3;
        }
        
        .op1-right{
            flex:1;
            padding:10px;
            float:right;
            background-color:lightcyan;
            height: 100%;
            width: 25%;
        }
        .op1-right p{
            font-size:15px;
        }
        .op2-profile{float: left;
            padding:10px;
            height: 400px;
            width: 50%;
            background-color:#F0F8FF;
            border-right:2px solid black; 
        }
        .op2-profile td{
            font-size: 20px;
            color:black;
            font-family: cursive;
        }
               .op2-profile2{
                   border-left:2px solid black; 
                   float:right;
            padding:10px;
            height: 400px;
            width: 50%;
            background-color:#F0F8FF;
        }
        .button1{
            text-decoration: none;
                color:black;
                background-color:cyan;
                font-family: courier new;
                border:none;
                font-weight: bold;
                padding:12px 150px;
                font-size: 25px;
                cursor:pointer;
                border-radius:10px;
				
            }
        .button1:focus{
            outline:0;
        }
				.button1:hover{
				color:black;
                background-color:red;
            }
            .button1:active {
  background-color: red;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.logbut{
                color:black;
                background-color:white;
                font-family: courier new;
                border:2px solid black;
                padding:10px 20px;
                font-size: 15px;
                cursor:pointer;
                border-radius:10px;
				
            }
        .logbut:focus{
            outline:0;
        }
        .logbut:hover{
            color:black;
            background-color:red;
        }
            .logbut:active {
                background-color: red;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }
         .op2-profile2 td{
            font-size:15px;
            color:black;
            font-family: cursive;
        }
        .op3-profile{
            float: left;
            padding:10px;
            height: 400px;
            width: 50%;
            background-color:#F0F8FF;
            border-right:2px solid black; 
        }
        .op3-profile td{
            font-size: 20px;
            color:black;
            font-family: cursive;
        }
               .op3-profile2{
                   border-left:2px solid black; 
                   float:right;
            padding:10px;
            height: 400px;
            width: 50%;
            background-color:#F0F8FF;
        }
         .op3-profile2 td{
            font-size: 15px;
            color:black;
            font-family: cursive;
        }
        .option6-left{
            background-color:#F0F8FF;
        }
        .option6-right{
            background-color:#F0F8FF;
        }
        .bustab{
            
        }
        .bustab input,select{
            width:270px;
            border-radius: 5px;
        }
        .bustab th{
            font-size:30px;
        }
        .bustab td{
            font-size:20px;            
        }

        .logoutbutton{
                text-decoration: none;
                color:white;
                background-color:black;
                font-family: courier new;
                border:none;
                padding:8px 16px;
                font-weight: bold;
                font-size: 20px;
                cursor:pointer;
                border-radius:10px;
        }
        .searchButton{
            
  /* Just a little styling to make it pretty */
  border:1px solid white;
  background:red;
  color:white;
  width:100px;
  padding:6px 12px;
  text-decoration: none;
  cursor: pointer;
        }
        .searchButton:hover{
            border:1px solid black;
            background-color: lightcoral;
        }
            .dashButton{
            
  /* Just a little styling to make it pretty */
  border:1px solid white;
  text-decoration: none;
  background:lightskyblue;
  color:white;
  width:100%;
  height: 100px;     
  padding:6px 12px;
  text-decoration: none;
  cursor: pointer;
  font-size:50px;
        }
        .dashButton:hover{
            font-size:30px;
            border:1px solid black;
            background-color: lightcoral;
        }
         .student {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
}
            .student td,.student th {
  border: 1px solid #ddd;
  padding: 8px;
  
}
            .student tr:nth-child(even){background-color: lightblue;}
            
            .student th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align:center;
  background-color: grey;
  color: white;
  
}  

        </style>
    </head>
    <body>
        <div class="header">
          
            <h1 class="w3-xxxlarge" style="border:none;text-decoration:underline;display: flex;flex-wrap: wrap;  min-width: 900px;">
                
                Bus Management<span class="adm">ADMIN</span></h1>
                   
        </div>
        <div style="background-color:#232f3e;height:50px;width:100%;color:white;font-size:20px;text-align: center;">

WELCOME,<%= session.getAttribute("username").toString()%>
<div style="float:right;margin-right:5px;"><a href="LogOutServlet" class="logoutbutton">Logout</a></div>
</div>
        <div class="container">
            <div class="leftflex">
                 <div class="btn-group">
                    

   <button id="dashboard">Home</button>
   <button id="student">Student Data</button>
  <button id="faculty">Faculty Data</button>
<!--  <button id="admin">Admin</button>-->
  <button id="fees">Fees Data</button>
  <button id="routes">Routes</button>
  
                 </div>
            </div>
            <div class="rightflex">
                <div class="midrightflex" >
                        <div id="option1">
                            <div class="op1-left">

                               <a  style="text-decoration: none;" href="DisplayRouteReqServlet"> <button class="dashButton">Request</button></a>
                                <br>
                              <a  style="text-decoration: none;" href="DisplayComplaintDataServlet"> <button class="dashButton">Complaints</button></a>
                          
                              <br>
                               
                            </div>
                                
                            <div class="op1-right"><p><span style="font-size:25px;">Bus Management System</span> is a college level based webpage.
                                Every member of the college has  right to access this webpage. This webpage manages all the Bus 
                                related Problems,Queries ,Routes etc.</p>
                            </div>
                        </div>
                    <div id="option2">
                        <div class="op2-profile">
                            Enter Username : 
                            <form action="SearchIdServlet" method="post" >
                            <input type="text" name="StudentId" maxlength="20" placeholder="enter username">
                            <button type="submit" class="searchButton">Search</button>
                            </form>
                            <table>
                                
                                <th colspan="3">Student Profile</th>
                                <%
                                    List <DatabaseData> list = (List<DatabaseData>) request.getSession().getAttribute("list");
                                   try
                                   {
                                    if(list==null)
                                    {
                                       System.out.println(list);
                                    }
                                    else
                                    {
                                      for(DatabaseData Disp: list)
                                      {
                                %>
                                <tr><td>Name</td><td>:</td><td><%out.println(Disp.getName());%></td></tr>
                                <tr><td>Username</td><td>:</td><td><%out.println(Disp.getUsername());%></td></tr>
                                  <tr><td>Number</td><td>:</td><td><%out.println(Disp.getNumber());%></td></tr>
                                   <tr><td>Address</td><td>:</td><td><%out.println(Disp.getAddress());%></td></tr>
                                    <tr><td>Father Number</td><td>:</td><td><%out.println(Disp.getFathercontact());%></td></tr>
                                     <tr><td>Email</td><td>:</td><td></td></tr>
                                   <% } } }
                                   catch(Exception e)
{
System.out.println(e);
}%>
                            </table>
                            
                            
                        </div>
                        <div class="op2-profile2">
<!--                            <table >
                                <tr><th colspan="3">Student Bus's Profile</th></tr>
                                <tr><td>Bus Number</td><td>:</td></tr>
                                 <tr><td>Route number</td><td>:</td></tr>
                                  <tr><td>Driver Name</td><td>:</td></tr>                             
                            </table>-->
                            <hr>
                            <button class="button1" id="myBtn20">
                                ADD USER</button>
                            <div id="myModal20" class="modal20">

  <!-- Modal content -->
  <div class="modal-content20">
    <span class="close20">&times;</span>
    <form action="DatabaseServlet" method="post">
   <table  cellspacing="2" cellpadding="2" align="center">
       <th colspan="2">ADDING STUDENT ACCOUNT</th>
       <tr><td>Name</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="name" >
               <input type="hidden" name="account" value="Student"></td></tr>
           <tr><td>Username</td><td> <input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="username"> </td></tr>
           <tr><td>Password</td><td> <input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="password"> </td></tr>
           
           <tr><td>Contact No.</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="tel" name="number" maxlength="10"></td></tr>
           <tr><td>Father Name</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="fathername" ></td></tr>
           <tr><td>Parents Contact No.</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="tel" name="fathernumber" maxlength="10"></td></tr>
          <tr><td>Address</td><td><textarea style="background-color:#E6E6FA;border-radius: 10px;resize:none;"  rows="2" cols="31"  placeholder="write valid reason" name="address"></textarea></td></tr>
          
           <tr><td></td><td><button class="logbut">CREATE</button> <button class="logbut">RESET</button></td></tr>
  </table>
    </form>
  </div>
<script>
   
// Get the modal
var modal20 = document.getElementById('myModal20');

// Get the button that opens the modal
var btn20 = document.getElementById("myBtn20");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close20")[0];

// When the user clicks the button, open the modal 
btn20.onclick = function() {
  modal20.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal20.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal20) {
    modal20.style.display = "none";
  };
};
</script>
                            </div>
                            <hr>
<a class="button1" 
   href="DisplayStudentServlet">Remove/Database</a>                            
                        </div>
                    </div>
                     <div id="option3">
                       <div class="op3-profile">
                           Enter Username : 
                            <form action="SearchIdServlet" method="post" >
                            <input type="text" name="FacultyId" maxlength="20" placeholder="enter username">
                            <button type="submit" class="searchButton">Search</button>
                            </form>

                            <table>
                                <th colspan="3">Faculty Profile</th>
                                 <%
                                    List <DatabaseData> list2= (List<DatabaseData>) request.getSession().getAttribute("list2");
                                   try
                                   {
                                    if(list2==null)
                                    {
                                       System.out.println(list2);
                                    }
                                    else
                                    {
                                      for(DatabaseData Dispp: list2)
                                      {
                                %>
                                <tr><td>Name</td><td>:</td><td><%out.println(Dispp.getName());%></td></tr>
                                 <tr><td>Username</td><td>:</td><td><%out.println(Dispp.getUsername());%></td></tr>
                                  <tr><td>Number</td><td>:</td><td><%out.println(Dispp.getNumber());%></td></tr>
                                   <tr><td>Address</td><td>:</td><td><%out.println(Dispp.getAddress());%></td></tr>
                                    <tr><td>Father Number</td><td>:</td><td><%out.println(Dispp.getFathercontact());%></td></tr>
                                     <tr><td>Email</td><td>:</td><td><%out.println(Dispp.getMail());%></td></tr>
                                   <% } } }
                                   catch(Exception e)
{
System.out.println(e);
}%>
                            </table>
                            
                            
                        </div>
                        <div class="op3-profile2">
<!--                            <table >
                                <tr><th colspan="3">Faculty Bus's Profile</th></tr>
                                <tr><td>Bus Number</td><td>:</td></tr>
                                 <tr><td>Route number</td><td>:</td></tr>
                                  <tr><td>Driver Name</td><td>:</td></tr>
                                   
                            </table>-->
                            <hr>
                            <button class="button1" id="myBtn30">
                                ADD USER</button>
                            <div id="myModal30" class="modal30">

  <!-- Modal content -->
  <div class="modal-content30">
    <span class="close30">&times;</span>
    <form action="DatabaseServlet" method="post">
   <table  cellspacing="2" cellpadding="2" align="center">
       <th colspan="2">ADDING FACULTY ACCOUNT</th>
       
       <tr><td> <input type="hidden" name="account" value="Faculty">
               Name</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="name" ></td></tr>
        <tr><td>userName</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="username" ></td></tr>
         <tr><td>Password</td><td> <input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="password"> </td></tr>
           
           <tr><td>Contact No.</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="tel" name="number" maxlength="10"></td></tr>
           <tr><td>Father Name</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="text" name="fathername" ></td></tr>
           <tr><td>Parents Contact No.</td><td><input style="background-color:#E6E6FA;border-radius: 10px;" type="tel" name="fathernumber" maxlength="10"></td></tr>
            <tr><td>E-Mail</td><td> <input style="background-color:#E6E6FA;border-radius: 10px;" type="email" name="mail"> </td></tr>
           
           <tr><td>Address</td><td><textarea style="background-color:#E6E6FA;border-radius: 10px;resize:none;"  rows="2" cols="31"  placeholder="write valid reason" name="address"></textarea></td></tr>
          
           <tr><td></td><td><button class="logbut">CREATE</button> <button class="logbut">RESET</button></td></tr>
  </table>
    </form>
  </div>
<script>
// Get the modal
var modal30 = document.getElementById('myModal30');

// Get the button that opens the modal
var btn30 = document.getElementById("myBtn30");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close30")[0];

// When the user clicks the button, open the modal 
btn30.onclick = function() {
  modal30.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal30.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal30) {
    modal30.style.display = "none";
  };
};
</script>
                            </div>
                            <hr>
                          <a class="button1" href="DisplayFacultyServlet">Remove</a>                         
                            
                        </div>
                        
                    </div>
<!--                    <div id="option4"></div>-->
<div id="option5">
   
        <table class="student" align="center">
            <tr><th colspan="6" style="font-size:30px">Fees</th></tr>
            <tr><th>Name</th><th>Account</th><th>USERNAME</th><th>Number</th><th>Bus Stop</th><th>Fees Status</th></tr>
            <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        </table>
    
</div>
<div id="option6">
    <div class="option6-left">
        
  
        <form method="post" action="CreateBusRouteServlet">
        <table class="bustab">
            <tr><th colspan="3">Creating Route</th></tr>
            <tr>
                <td>
                    Enter BusRoute
                </td>
                <td>:</td>
                <td>
                    <select name="routeno">
                        <option value="CHD101">CHD101</option>
                        <option value="CHD102">CHD102</option>
                        <option value="CHD103">CHD103</option>
                        <option value="CHD104">CHD104</option>
                        <option value="MOH201">MOH201</option>
                        <option value="MOH202">MOH202</option>
                        <option value="MOH203">MOH203</option>
                        <option value="PKL301">PKL301</option>
                        <option value="PKL302">PKL302</option>
                       
                    </select>
                </td>
            </tr>
            <tr>
                <td>Enter BusNo</td><td>:</td><td>
                    <select name="busno">
                        
          <option value="HP12C9222">HP 12 C 9222</option>
          <option value="CH01TA0062">CH 01 TA 0062</option>
          <option value="PB11BY3127">PB 11 BY 3127</option>
          <option value="CH04D0218">CH 04 D 0218</option>
          <option value="CH04D0225">CH 04 D 0225</option>
          <option value="PB11AF9427">PB11 AF 9427</option>
          <option value="PB11BA5827">PB 11 BA 5827</option>
          <option value="HP12C2412">HP 12 C 2412</option>
          <option value="HP12D3952">HP 12 D 3952</option></select>
                </td></tr>
            <tr>
                <td>Enter Driver Name</td><td>:</td>
                <td>
                    <select name="drivername">
                        
          <option value="SUKHWINDER SINGH">SUKHWINDER SINGH</option>
          <option value="GURPREET SINGH">GURPREET SINGH</option>
          <option value="KULWINDER SINGH">KULWINDER SINGH</option>
          <option value="YUSUF ALI">YUSUF ALI</option>
          <option value="GURMEET SINGH">GURMEET SINGH</option>
          <option value="SURINDER SINGH">SURINDER SINGH</option>
          <option value="GURVINDER SINGH">GURVINDER SINGH</option>
          <option value="SANJEEV KUMAR">SANJEEV KUMAR</option>
          <option value="HARJEET SINGH">HARJEET SINGH</option></select>
                    
                </td>
            </tr>
            <tr>
                <td>Start Point</td><td>:</td><td>
                    <input type="text" name="start"></td>
            </tr>
             <tr>
                <td>End Point</td><td>:</td><td>
                    <input type="text" name="end">
                </td>
            </tr>
            <tr>
                <td>Enter No Of Stops</td><td>:</td>
                <td><input type="text" name="stops"></td>
            </tr>
            <tr>
                <td></td><td></td><td><button type="submit">Create Route</button></td>
            </tr>
            
        </table>
    </form>
          </div>
    <div class="option6-right">
        <a class="button1" 
   href="DisplayRouteServlet">Remove/Database</a> 
    </div>
</div>
                  
                </div>  
            </div>
        </div>
        <div class="footer">
            
        </div>
        
    </body>
</html>

