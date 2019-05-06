package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LOGIN_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>LOGIN</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                margin:0;\n");
      out.write("                 background-color: grey;\n");
      out.write("            }\n");
      out.write("             .header{\n");
      out.write("                 background-color: black;\n");
      out.write("                 padding:50px;\n");
      out.write("                 box-sizing: border-box;\n");
      out.write("             }\n");
      out.write("            .main{\n");
      out.write("                background-color: black;\n");
      out.write("                display: flex;\n");
      out.write("                flex-direction: row;\n");
      out.write("                flex-wrap: wrap;\n");
      out.write("                height: 440px;\n");
      out.write("            }\n");
      out.write("            .busimg{\n");
      out.write("                padding: 20px;\n");
      out.write("                flex:3;\n");
      out.write("                background-image: url(\"bus.png\");\n");
      out.write("                background-color: black;\n");
      out.write("                background-repeat: no-repeat, repeat;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .loginform{\n");
      out.write("                padding: 20px;\n");
      out.write("                flex:1;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            .footer{\n");
      out.write("                background-color: black;\n");
      out.write("                padding:50px;\n");
      out.write("                box-sizing: border-box; \n");
      out.write("            }\n");
      out.write("            .frm{\n");
      out.write("                \n");
      out.write("                background: radial-gradient(#FFE4B5, white);\n");
      out.write("                height:450px;\n");
      out.write("                border-radius:30px;\n");
      out.write("                box-shadow:5px 5px 5px black;\n");
      out.write("            }\n");
      out.write("            #user ,#pass11,#logtyp{\n");
      out.write("                color:red;\n");
      out.write("                font-size: 13px;\n");
      out.write("            }\n");
      out.write("            .abc{\n");
      out.write("                font-family: cursive;\n");
      out.write("                border-radius:10px;\n");
      out.write("                height:40px;\n");
      out.write("                width:250px;\n");
      out.write("            }\n");
      out.write("            textarea:focus,input:focus,select:focus{\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("            .abc:hover{\n");
      out.write("                background-color: lightgrey;\n");
      out.write("            }\n");
      out.write("            .inp{\n");
      out.write("                font-size:18px;\n");
      out.write("               font-family: cursive;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .button1{\n");
      out.write("                color:white;\n");
      out.write("                background-color:cyan;\n");
      out.write("                font-family: courier new;\n");
      out.write("                border:none;\n");
      out.write("\t\t\t\tmargin-top:5px;\n");
      out.write("                padding:12px 24px;\n");
      out.write("                margin-left:70px;\n");
      out.write("                font-size: 25px;\n");
      out.write("                cursor:pointer;\n");
      out.write("                border-radius:10px;\n");
      out.write("\t\t\t\t\n");
      out.write("            }\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t    .button1:focus{\n");
      out.write("\t\t\t\toutline:0;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\t.button1:hover{\n");
      out.write("\t\t\t\tcolor:black;\n");
      out.write("                background-color:red;\n");
      out.write("            }\n");
      out.write("            .button1:active {\n");
      out.write("  background-color: red;\n");
      out.write("  box-shadow: 0 5px #666;\n");
      out.write("  transform: translateY(4px);\n");
      out.write("}\n");
      out.write("            .button2{\n");
      out.write("            color:white;\n");
      out.write("            background-color:dodgerblue;\n");
      out.write("            border:none;\n");
      out.write("            cursor:pointer;\n");
      out.write("            border-radius:10px;\n");
      out.write("            }\n");
      out.write("\t\t\t.button2:hover{\n");
      out.write("\t\t\tcolor:white;\n");
      out.write("\t\t\tbackground-color:red;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t .button2:focus{\n");
      out.write("\t\t\t outline:0;\n");
      out.write("\t\t\t }\n");
      out.write("            .log{\n");
      out.write("                text-align:center;\n");
      out.write("                font-family:Courier New;\n");
      out.write("                font-size:40px;\n");
      out.write("                color:#444;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\"></div>\n");
      out.write("        <div class=\"main\">\n");
      out.write("             <div class=\"busimg\"></div>\n");
      out.write("             <div class=\"loginform\">\n");
      out.write("                 <div class=\"frm\">\n");
      out.write("                 <form name=\"myform\" action=\"LogServlet\" method=\"post\" onsubmit=\"return myvalidation()\">\n");
      out.write("            <table align=\"center\" >\n");
      out.write("                <tr><th class=\"log\">Log In</th></tr>\n");
      out.write("                <tr><td class=\"inp\">USERNAME</td></tr>\n");
      out.write("                <tr><td><input class=\"abc\" type=\"text\" name=\"username\"  placeholder=\"eg....abc123\" >\n");
      out.write("                        <p id=\"user\" style=\"margin:0;text-align: center;\">\n");
      out.write("                            \n");
      out.write("                        </p></td></tr>\n");
      out.write("\t\t\t\t<tr><td></td></tr>\n");
      out.write("                <tr><td class=\"inp\" style=\"margin:0;\">PASSWORD</td></tr>\n");
      out.write("                <tr><td><input class=\"abc\"  type=\"password\" name=\"password\" placeholder=\"*********\">\n");
      out.write("                    <p id=\"pass11\" style=\"margin:0;text-align: center;\"></p></td></tr>\n");
      out.write("              <tr><td class=\"inp\" >DEPARTMENT</td></tr>\n");
      out.write("                <tr><td>\n");
      out.write("                  <select class=\"abc\" id=\"myInput\" name=\"account\">\n");
      out.write("                    <option value=\"Student\">STUDENT</option>\n");
      out.write("                    <option value=\"Faculty\">FACULTY</option>\n");
      out.write("                    <option value=\"Admin\">ADMIN</option>\n");
      out.write("                  </select>\n");
      out.write("                        <tr><td>");

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
                                
      out.write("\n");
      out.write("                            </td></tr>\n");
      out.write("\n");
      out.write("                                                <p id=\"logtyp\" style=\"margin:0;text-align: center;\">\n");
      out.write("                            \n");
      out.write("                        </p>\n");
      out.write("                  </td></tr>\n");
      out.write("                <tr><td><button type=\"submit\" name=\"button\"  class=\"button1\" onclick=\"myvalidation()\"  >LOGIN</button></td></tr>\n");
      out.write("            </table>\n");
      out.write("                     <table>\n");
      out.write("                <tr><td><button type=\"button\" name=\"button\"  class=\"button2\" >FORGOT PASSWORD</button></td></tr>\n");
      out.write("                \n");
      out.write("              \t</table>\n");
      out.write("              \t</form>\n");
      out.write("                   <script>\n");
      out.write("                    function myvalidation(){\n");
      out.write("                        var flag=true;\n");
      out.write("                    var value1=document.forms[\"myform\"][\"username\"].value;\n");
      out.write("                    var value2=document.forms[\"myform\"][\"password\"].value;\n");
      out.write("                    var value3=document.forms[\"myform\"][\"account\"].value;\n");
      out.write("                    if(value1 == \"\"){\n");
      out.write("//                    alert(\"USERNAME Field cannot be empty\");\n");
      out.write("document.getElementById(\"user\").innerHTML =\"Username Is Empty\";\n");
      out.write("                    flag= false;\n");
      out.write("                  }\n");
      out.write("                  \n");
      out.write("                  if(value2 ==   \"\"){\n");
      out.write("//                  alert(\"PASSWORD Field cannot be empty\");\n");
      out.write("document.getElementById(\"pass11\").innerHTML =\"Password Is Empty\";\n");
      out.write("                  flag=false;\n");
      out.write("                }\n");
      out.write("              if(value3 == \"\"){\n");
      out.write("                 document.getElementById(\"logtyp\").innerHTML =\"Fill it up\";\n");
      out.write("                  flag=false;\n");
      out.write("                }\n");
      out.write("                return flag;\n");
      out.write("              }\n");
      out.write("            </script>\n");
      out.write("\n");
      out.write("             </div>\n");
      out.write("             </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"footer\"></div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
