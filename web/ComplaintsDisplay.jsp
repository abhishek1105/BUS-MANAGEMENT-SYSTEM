<%-- 
    Document   : ComplaintsDisplay
    Created on : Apr 2, 2019, 10:37:40 PM
    Author     : Abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.ComplaintsData"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Home || Complaints Display</title>
        <style>
 body{
                padding: 10px;
                background-color: white;
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
            
        </style>
    </head>
    <body>
        <div class="header">
          
            <a href="HOMEPAGEADMIN.jsp"> <h1 class="w3-xxxlarge" style="border:none;text-decoration:underline;display: flex;flex-wrap: wrap;  min-width: 900px;">
                
                    Bus Management<span class="adm">ADMIN</span></h1></a>
           

           
        </div>
        <table align="center" class="student">
            <tr>
                <th colspan="6" style="font-size: 30px;">STUDENT/FACULTY COMPLAINTS</th>
            </tr>
            <tr>
                <th>Department</th>
                <th>Username/Id</th>
                <th>Number</th>
                <th>Bus No</th>
                <th>Route NO</th>
                <th>Complaint</th>
            </tr>
             <%
                List <ComplaintsData> list = (List<ComplaintsData>)request.getSession().getAttribute("list");
                
                for(ComplaintsData disp : list)
                {
                      %>
            <tr>
                <td><%=disp.getDept() %></td>
                <td><%=disp.getUsername()  %></td>
                <td><%=disp.getNumber()  %></td>
                  <td><%=disp.getBusno()  %></td>
                    <td><%=disp.getRouteno()  %></td>
                      <td><%=disp.getComplaint()  %></td>
            </tr>
            <% }
%>
        </table>
        
    </body>
</html>
