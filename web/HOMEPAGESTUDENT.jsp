
<%@page import="java.util.List"%>
<%@page import="Model.DatabaseData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HOME || STUDENT</title>
                <script>
        window.onload = function(){
//        document.getElementById('option2').style.display = 'none';
        document.getElementById('option5').style.display = 'none';
        document.getElementById('option6').style.display = 'none';
        };
        </script>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="jquery.js">
            </script>
               <script src="myJS.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
        <style>
            .formpopup {
  display: none;
  position: fixed;
  bottom: 150px;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
  overflow: auto;
  
}

.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text],select{
  width: 100%;
  padding: 2px;
  margin: 5px 0 10px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus{
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 8px 10px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
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
            
            body{
                padding: 5px;
                background-color: white;
/*                background: url(busBG.jpg) no-repeat 50% fixed / cover;*/
            }
            .adm{
                font-size: 20px;
                color:white;
                display: flex;
                flex-wrap:wrap;
                margin-top: 15px;
                padding:none;
            
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
            .header h1{
                font-family: "Allerta Stencil", Sans-serif;
                font-size: 50px;
                text-align: center;
                color:white;
                line-height: 0;
            }
            .search-bar{
                margin-left: 50%;
                margin-top: 15px;
            }
            .formsearch {
                display:flex;
                flex-direction:row;
                border:1px solid grey;
            }
            input {
                flex-grow:2;
                width:300px;
                height:40px;
                border:none;
            }
            input:focus{
                outline: none;
            }
            .searchh {
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
            .btn-group button{
                background-color:#E6E6FA; 
                border: 1px white;
                color: black;
                font-size:20px;
                font-family: cursive;
                padding: 20px 30px;
                cursor: pointer;
                width: 100%;
                display: block;
                transition: 0.5s;
            }
            .btn-group button:not(:last-child) {
                border-bottom:5px solid white; /* Prevent double borders */
            }
            .btn-group button:hover {
                background-color: #FFDEAD;
                border-bottom: 3px solid black;
                border-right: 20px solid #FFDEAD;
               
                font-size:22px;
                transition: 0.5s;
            }
            *:focus {
                outline: 0 !important;
            }
            .y{
                color:black;
            }
            .midrightflex{
                height: 100%;
                
                width:100%;
                display: inline-block;
                position: relative;
}
#option1,#option2,#option5,#option6{
    
    background-color:#F8F8FF;
    height:100%;
    width:100%;
    border:1px solid black;
    display: flex;
    flex-wrap: wrap;
    display: inline-block;
    padding:5px;
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
        .op1-right{
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
            height: 300px;
            width: 50%;
            background-color:#F0F8FF;
            border-right:2px solid black; 
             flex:2;
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
            height: 300px;
            width: 50%;
            background-color:#F0F8FF;
             flex:2;
        }
         .op2-profile2 td,th{
            font-size: 20px;
            color:black;
            font-family: cursive;
        }
        
        .op5-right{
            padding:10px;
            float:right;
            background-color:lightcyan;
            height: 70%;
            width: 25%;
            border-left:2px solid black;
        }
         .op5-left{
            padding:10px;
            float:left;
            background-color:lightcyan;
            height: 70%;
            width: 75%;
            border-right:2px solid black;
        }
       
        .op6-left{
            float:left;
            height: 100%;
            width: 50%;
            background-color:lightcyan;
            font-size: 20px;
            color:black;
            font-family: cursive;
            border-right:2px solid black; 
            padding:10px;
        }
        .op6-right{
            padding:10px;
            float:right;
            background-color:lightcyan;
            font-size: 20px;
            color:black;
            font-family: cursive;
            height: 100%;
            width: 50%;
             border-left:2px solid black; 
        }
        .button-set{
            color:white;
                background-color:cyan;
                font-family: courier new;
                border:none;
                height: 30px;
                width:100px;
                font-size: 20px;
                cursor:pointer;
                border-radius:10px;
        }
        .button-set:focus{
            outline:0;
        }
        .button-set:hover{
            color:black;
            background-color:red;
        }
        .button-set:active {
            background-color: red;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
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


        </style>
    </head>
    <body>
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
            for(DatabaseData Disp :list)
            {
                
            %>
        <div class="header">
          
            <h1 class="w3-xxxlarge" style="border:none;text-decoration:underline;display: flex;flex-wrap: wrap;  min-width: 900px;">
                
                Bus Management<span class="adm">STUDENT</span></h1>
           
<!--           <div class="search-bar">
               <form class="formsearch">
  <input placeholder="search"/>
  <button class="searchh">Search</button>
</form>
               <input class="search-bar-input" type="text" placeholder="SEARCHING BAR"><button class="head-butt">Search</button>
           </div>-->
            
        </div>
        <div style="background-color:#232f3e;height:50px;width:100%;color:white;font-size:20px;text-align: center;">
         Welcome,    <%out.println(Disp.getName());%>!

<div style="float:right;margin-right:5px;">
    <a  class="open-button" onclick="openForm()" >Complaint ?</a>
    <script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
  
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

 var formpopup = document.getElementById('myForm');
        
        window.onclick = function(event) {
  if (event.target == formpopup) {
    formpopup.style.display = "none";
  };
};
</script>

    <a href="LogOutServlet" class="logoutbutton">Logout</a>
<div class="formpopup" id="myForm">
  <form action="ComplaintData" class="form-container">
      <input type="hidden" name="dept" value="Student">
      <input type="hidden" name="username" value="<%out.println(Disp.getUsername());%>">
      <input type="hidden" name="number" value="<%out.println(Disp.getNumber());%>">
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
     
     
     
      <input type="text" name="complaint" placeholder="Enter complaint">

    <button type="submit" class="btn">Submit</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>
    
</div>

</div>
        
        <div class="container">
            <div class="leftflex">
                 <div class="btn-group">
                    
<!--  <button onclick="my()" id="dash">Dashboard</button>-->
<!--   <button id="dashboard">Dashboard</button>-->
   <button id="student">Dashboard</button>
   <button id="fees">Fee & Routes</button>
   <button id="routes">Settings</button>
                 </div>
            </div>
            <div class="rightflex">
                <div class="midrightflex" >
<!--                        <div id="option1">
                            <div class="op1-left">
                                
                            </div>
                                
                            <div class="op1-right"><p><span style="font-size:25px;">Bus Management System</span> is a college level based webpage.
                                Every member of the college has  right to access this webpage. This webpage manages all the Bus 
                                related Problems,Queries ,Routes etc.</p>
                            </div>
                    </div>-->

                                <div id="option2">
                        <div class="op2-profile">
                            <table>
                                 
                                
                                
                                <th colspan="4">Student Profile</th>
                                <tr><td>Name</td><td>:</td><td><%out.println(Disp.getName());%></td></tr>
                                <tr><td>Username</td><td>:</td><td><%out.println(Disp.getUsername());%></td></tr>
                                <tr><td>Number</td><td>:</td><td><%out.println(Disp.getNumber());%></td></tr>
                                <tr><td>Father Name</td><td>:</td><td><%out.println(Disp.getFathername());%></td></tr>
                                <tr><td>Father Number</td><td>:</td><td><%out.println(Disp.getFathercontact());%></td></tr>
                                <tr><td>Address</td><td>:</td><td><%out.println(Disp.getAddress());%></td></tr>
                                 
  
                            </table>
                            
                        </div>
                        <div class="op2-profile2">
                            <table>
                                
                                <th colspan="3">Your Bus's Profile</th>
                                <tr><td>Bus Number</td><td>:</td><td></td></tr>
                                 <tr><td>RC number</td><td>:</td><td></td></tr>
                                  <tr><td>Route</td><td>:</td><td></td></tr>
<!--                                   <tr><td></td><td>:</td></tr>-->
                            </table>
                            
                        </div>
                        
                    </div>
                   
                    <div id="option5">
                        <div class="op5-left">
                            <table class="student" align="center">
                                <tr>
                                    <th colspan="4">Present Bus Route</th>
                                </tr>
                                <tr><th>Bus Number</th><th>FROM</th><th>TO</th><th>Your Stop</th></tr>
                                <tr><td></td><td></td><td></td><td></td></tr>
                            </table>  
                            
                        </div>
                        <div class="op5-right">
                            <form action="RouteChangeRequest" method="post">
                                <table>
                                    <th>CHANGE BUS ROUTE??</th>
                                    <tr>
                                        <td>ID/USERNAME
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="hidden" name="stud" value="Student">
                                                <input type="tel" value="<%=      
                        session.getAttribute("username").toString()  
%>" maxlength="10" style="width:250px;" name="reqId" readonly></td>
                                        </tr>
                                    <tr>
                                        <td>Reason</td></tr>
                                    <tr>
                                        <td><input type="text" maxlength="50" style="width:250px;" name="reqReason"></td>
                                    </tr>
                                    <tr><td align="center">
                                            <abbr title="Request sent to ADMIN"><button >SUBMIT</button></abbr> 
                                            </td></tr>
                                </table>
                            </form>
                            </div>
                    </div>
                    <div id="option6">
                        <div class="op6-left">
                            <form>
                                <table cellpadding="5" align="center">
                                    <tr><th colspan="3">Edit your Account</th></tr>
                                    <tr><td>Name</td><td>:</td><td><input   value="<%out.println(Disp.getName());%>" name="name" type="text" readonly></td></tr>
                                    <tr><td>Username/ID</td><td>:</td><td><input type="tel" name="username" maxlength="10" value="<%out.println(Disp.getUsername());%>" readonly=""></td></tr>
                                    <tr><td>Email</td><td>:</td><td><input type="email" name="mail"></td></tr>
                                    <tr><td>Mobile</td><td>:</td><td><input value="<%out.println(Disp.getNumber());%>" type="tel" maxlength="10" name="number"></td></tr>
                                    <tr><td>Father Number</td><td>:</td><td><input value="<%out.println(Disp.getFathercontact());%>" type="tel" maxlength="10" name="fathernumber"></td></tr>
                                    <tr><td>Address</td><td>:</td><td><input type="text"  value="<%out.println(Disp.getAddress());%>" maxlength="30" name="address"></td></tr>
                                    <tr><td></td><td></td>
                                        <td><button class="button-set">Reset</button> <button class="button-set">Submit</button></td></tr>
                                
                                    
                                </table>
                            </form>
                        </div>
                        <div class="op6-right">
<!--                            <form action = "passChangeServlet" method = "get">-->
<form>
                                <table cellpadding="5" align="center">
                                    <tr><th colspan="3">Change Your Password</th></tr>
                                    <tr><td>Old Password</td><td>:</td><td><input type="password"></td></tr>
                                    <tr><td>New Password</td><td>:</td>
                                        <td><input type="password" name="pswd" id="pwdt"></td></tr>
                                    <tr><td> Confirm New Password</td><td>:</td>
                                        <td><input type="password" name="cpswd" id="cpwdt">
                                        <p id="passo"></p></td></tr>
                                    <tr><td></td><td></td>
                                        <td><button onclick="validate()" class="button-set" id="abc" type="submit">Submit</button> 
                                            <button class="button-set" >Reset</button></td></tr>
                                    <script>
                                        function validate(){
				var x = document.getElementById("pwdt").value;
				var y = document.getElementById("cpwdt").value;
				if(x !== y){
					document.getElementById("passo").innerHTML ="MISMATCH";
					document.getElementById("cpwdt").style.background = "red";
                                    }
				else{
                                    document.getElementById("cpwdt").style.background= "white";
					document.getElementById("pwdt").style.background = "white";
				}
			}
                        
                     
                                    </script>
                                    
                                   
                                    
                                </table>
    </form>
                                
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <div class="footer">
            
        </div>
        <%  }    }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
    </body>
</html>

