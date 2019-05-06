<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <style>
            body{
                margin:0;
                 background-color: grey;
            }
             .header{
                 background-color: black;
                 padding:50px;
                 box-sizing: border-box;
             }
            .main{
                background-color: black;
                display: flex;
                flex-direction: row;
                flex-wrap: wrap;
                height: 440px;
            }
            .busimg{
                padding: 20px;
                flex:3;
                background-image: url("bus.png");
                background-color: black;
                background-repeat: no-repeat, repeat;
                
            }
            .loginform{
                padding: 20px;
                flex:1;
               
            }
            .footer{
                background-color: black;
                padding:50px;
                box-sizing: border-box; 
            }
            .frm{
                
                background: radial-gradient(#FFE4B5, white);
                height:450px;
                border-radius:30px;
                box-shadow:5px 5px 5px black;
            }
            #user ,#pass11,#logtyp{
                color:red;
                font-size: 13px;
            }
            .abc{
                font-family: cursive;
                border-radius:10px;
                height:40px;
                width:250px;
            }
            textarea:focus,input:focus,select:focus{
                outline: none;
            }
            .abc:hover{
                background-color: lightgrey;
            }
            .inp{
                font-size:18px;
               font-family: cursive;
                text-align: center;
            }
            .button1{
                color:white;
                background-color:cyan;
                font-family: courier new;
                border:none;
				margin-top:5px;
                padding:12px 24px;
                margin-left:70px;
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
            .button2{
            color:white;
            background-color:dodgerblue;
            border:none;
            cursor:pointer;
            border-radius:10px;
            }
			.button2:hover{
			color:white;
			background-color:red;
			}
			 .button2:focus{
			 outline:0;
			 }
            .log{
                text-align:center;
                font-family:Courier New;
                font-size:40px;
                color:#444;
            }
            </style>
    </head>
    <body>
        <div class="header"></div>
        <div class="main">
             <div class="busimg"></div>
             <div class="loginform">
                 <div class="frm">
                 <form name="myform" action="LogServlet" method="post" onsubmit="return myvalidation()">
            <table align="center" >
                <tr><th class="log">Log In</th></tr>
                <tr><td class="inp">USERNAME</td></tr>
                <tr><td><input class="abc" type="text" name="username"  placeholder="eg....abc123" >
                        <p id="user" style="margin:0;text-align: center;">
                            
                        </p></td></tr>
				<tr><td></td></tr>
                <tr><td class="inp" style="margin:0;">PASSWORD</td></tr>
                <tr><td><input class="abc"  type="password" name="password" placeholder="*********">
                    <p id="pass11" style="margin:0;text-align: center;"></p></td></tr>
              <tr><td class="inp" >DEPARTMENT</td></tr>
                <tr><td>
                  <select class="abc" id="myInput" name="account">
                    <option value="Student">STUDENT</option>
                    <option value="Faculty">FACULTY</option>
                    <option value="Admin">ADMIN</option>
                  </select>
                        <tr><td><%
                                    try
                                    {
                                        HttpSession hts = request.getSession();
                                        Object ob = hts.getAttribute("LoginFailed");
                                        String s = (String) hts.getAttribute("LoginFailed");
                                        if(ob==null)
                                        {
                                            System.out.println("Null value!!");
                                        }
                                        else if(ob!=null && s.equalsIgnoreCase("failed"))
                                        {
                                            out.println("Login Failed !!");
                                            hts.removeAttribute("LoginFailed");
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        System.out.println(e);
                                    }
                                %>
                            </td></tr>

                                                <p id="logtyp" style="margin:0;text-align: center;">
                            
                        </p>
                  </td></tr>
                <tr><td><button type="submit" name="button"  class="button1" onclick="myvalidation()"  >LOGIN</button></td></tr>
            </table>
                     <table>
                <tr><td><button type="button" name="button"  class="button2" >FORGOT PASSWORD</button></td></tr>
                
              	</table>
              	</form>
                   <script>
                    function myvalidation(){
                        var flag=true;
                    var value1=document.forms["myform"]["username"].value;
                    var value2=document.forms["myform"]["password"].value;
                    var value3=document.forms["myform"]["account"].value;
                    if(value1 == ""){
//                    alert("USERNAME Field cannot be empty");
document.getElementById("user").innerHTML ="Username Is Empty";
                    flag= false;
                  }
                  
                  if(value2 ==   ""){
//                  alert("PASSWORD Field cannot be empty");
document.getElementById("pass11").innerHTML ="Password Is Empty";
                  flag=false;
                }
              if(value3 == ""){
                 document.getElementById("logtyp").innerHTML ="Fill it up";
                  flag=false;
                }
                return flag;
              }
            </script>

             </div>
             </div>
        </div>
        <div class="footer"></div>
        
    </body>
</html>

