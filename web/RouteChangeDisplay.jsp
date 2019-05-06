<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.ReqRouteChange"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home || Route Display</title>
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
    </head>
    <body>
         <div class="header">
          
            <a href="HOMEPAGEADMIN.jsp"> <h1 class="w3-xxxlarge" style="border:none;text-decoration:underline;display: flex;flex-wrap: wrap;  min-width: 900px;">
                
                    Bus Management<span class="adm">ADMIN</span></h1></a>
           

           
        </div>
        <table align="center" class="student">
            <tr>
                <th colspan="3" style="font-size: 30px;">ROUTE CHANGE REQUEST DATABASE</th>
            </tr>
            <tr>
                <th>Id</th>
                <th>Department</th>
                <th>Reason</th>
            </tr>
             <%
                List <ReqRouteChange> list = (List<ReqRouteChange>)request.getSession().getAttribute("list");
                
                for(ReqRouteChange disp : list)
                {
                      %>
            <tr>
                <td><%=disp.getId() %></td>
                <td><%=disp.getDept()  %></td>
                <td><%=disp.getReason()  %></td>
            </tr>
            <% }
%>
        </table>
        
    </body>
</html>
