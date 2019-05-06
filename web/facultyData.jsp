
<%@page import="Model.DatabaseData"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
       <style>
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
              body{
                padding: 10px;
                background-color: white;
            }
            .header{
                display: -webkit-flex; /* Safari */
                -webkit-flex-wrap: wrap; /* Safari 6.1+ */
               
                height: 110px;
                padding:40px;
                box-sizing: border-box;
                background-color:#232f3e;
            }
            .student {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME || Faculty DATABASE</title>
    </head>
    <body>
         <div class="header">
          
            <a href="HOMEPAGEADMIN.jsp"> <h1 class="w3-xxxlarge" style="border:none;text-decoration:underline;display: flex;flex-wrap: wrap;  min-width: 900px;">
                
                    Bus Management<span class="adm">ADMIN</span></h1></a>
           

           
        </div>
       
        <table class="student" align="center" >
            <tr><th colspan="10" style="font-size: 30px;">FACULTY DATABASE</th></tr>
            <tr>
                <th>Sr. No</th>
                <th>Username</th>
                <th>NAME</th>
                <th>CONTACT</th>
                <th>FATHER</th>
                <th>FATHER CONTACT</th>
                <th>ADDRESS</th>
                <th>ACTION</th>
            </tr>
            <%
                List <DatabaseData> list = (List<DatabaseData>)request.getSession().getAttribute("list");
                int count=1;
                for(DatabaseData disp : list)
                {
                      %>
                      <tr>
                          <td><%=count++%></td>
                          
                         <td><%=disp.getUsername()%></td>
                          <td><%=disp.getName()%></td>                         
                          <td><%=disp.getNumber()%></td>
                          <td><%=disp.getFathername()%></td>
                          <td><%=disp.getFathercontact()%></td>
                          <td><%=disp.getAddress()%></td>
                          <td> <%
                            
    out.println("<a  href='DropFacultydata?namedrop="+disp.getName()+"&Contactdrop="+disp.getNumber()+"&FatherContactdrop="+disp.getFathercontact()+"'>Remove</a>");
 
%></td> </tr>
                      <% 
}

%>    
        </table>
    </body>
</html>
