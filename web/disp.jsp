<%-- 
    Document   : Loda
    Created on : Mar 31, 2019, 11:27:55 PM
    Author     : Abc
--%>

<%@page import="java.util.List"%>
<%@page import="Model.CreateStudentData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
     List <CreateStudentData> list = (List<CreateStudentData>) request.getSession().getAttribute("list");
                                   try
                                   {
                                    if(list==null)
                                    {
                                       System.out.println(list);
                                    }
                                    else
                                    {
                                      for(CreateStudentData Disp: list)
                                      {
                                          out.println(Disp.getDob());
                                      }
                                    }
                                   }
                                    catch(Exception e)
                                            {
                                            System.out.println(e);
                                            }
                                    %>
    </body>
</html>
