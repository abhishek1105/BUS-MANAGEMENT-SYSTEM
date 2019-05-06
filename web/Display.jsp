<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <button action="DisplayServlet">view</button>
        <h1>Student Information!</h1>
        
        <table>
            <tr>
                <th>NAME</th>
                <th>ID</th>
                <th>MARKS</th> 
            </tr>
                
                <% 
                  List<Student> records = request.getAttribute();
                   
                   for(Student s : records){
                    %>
                
                <tr>
                    <td><%= s.getName()%></td>
                    <td><%= s.getId()%></td>
                    <td><%= s.getMarks()%></td>
                </tr>
                <%
                    }
                %>
        </table>
    </body>
</html>



<% 
  int x = 10;
  out.println(x);
    %>