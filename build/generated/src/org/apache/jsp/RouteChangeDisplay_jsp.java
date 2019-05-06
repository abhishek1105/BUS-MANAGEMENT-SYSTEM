package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.ReqRouteChange;
import java.util.List;

public final class RouteChangeDisplay_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Allerta+Stencil\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home || Route Display</title>\n");
      out.write("        <style>\n");
      out.write("            .adm{\n");
      out.write("                font-size: 20px;\n");
      out.write("                color:white;\n");
      out.write("            }\n");
      out.write("            hr {\n");
      out.write("                display: block;\n");
      out.write("  margin-top: 0.5em;\n");
      out.write("  margin-bottom: 0.5em;\n");
      out.write("  margin-left: auto;\n");
      out.write("  margin-right: auto;\n");
      out.write("  border-style: inset;\n");
      out.write("  border-width: 1px;\n");
      out.write("}\n");
      out.write("            .header h1{\n");
      out.write("                font-family: \"Allerta Stencil\", Sans-serif;\n");
      out.write("                font-size: 50px;\n");
      out.write("                text-align: center;\n");
      out.write("                color:white;\n");
      out.write("                line-height: 0;\n");
      out.write("            }\n");
      out.write("            .adm{\n");
      out.write("                font-size: 20px;\n");
      out.write("                color:white;\n");
      out.write("                display: flex;\n");
      out.write("                flex-wrap:wrap;\n");
      out.write("                margin-top: 15px;\n");
      out.write("                padding:none;\n");
      out.write("            \n");
      out.write("            }\n");
      out.write("              body{\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: white;\n");
      out.write("            }\n");
      out.write("            .header{\n");
      out.write("                display: -webkit-flex; /* Safari */\n");
      out.write("                -webkit-flex-wrap: wrap; /* Safari 6.1+ */\n");
      out.write("               \n");
      out.write("                height: 110px;\n");
      out.write("                padding:40px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                background-color:#232f3e;\n");
      out.write("            }\n");
      out.write("            .student {\n");
      out.write("  font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("            .student td,.student th {\n");
      out.write("  border: 1px solid #ddd;\n");
      out.write("  padding: 8px;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("            .student tr:nth-child(even){background-color: lightblue;}\n");
      out.write("            \n");
      out.write("            .student th {\n");
      out.write("  padding-top: 12px;\n");
      out.write("  padding-bottom: 12px;\n");
      out.write("  text-align:center;\n");
      out.write("  background-color: grey;\n");
      out.write("  color: white;\n");
      out.write("  \n");
      out.write("}  \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"header\">\n");
      out.write("          \n");
      out.write("            <a href=\"HOMEPAGEADMIN.jsp\"> <h1 class=\"w3-xxxlarge\" style=\"border:none;text-decoration:underline;display: flex;flex-wrap: wrap;  min-width: 900px;\">\n");
      out.write("                \n");
      out.write("                    Bus Management<span class=\"adm\">ADMIN</span></h1></a>\n");
      out.write("           \n");
      out.write("\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        <table align=\"center\" class=\"student\">\n");
      out.write("            <tr>\n");
      out.write("                <th colspan=\"3\" style=\"font-size: 30px;\">ROUTE CHANGE REQUEST DATABASE</th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th>Id</th>\n");
      out.write("                <th>Department</th>\n");
      out.write("                <th>Reason</th>\n");
      out.write("            </tr>\n");
      out.write("             ");

                List <ReqRouteChange> list = (List<ReqRouteChange>)request.getSession().getAttribute("list");
                
                for(ReqRouteChange disp : list)
                {
                      
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(disp.getId() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(disp.getDept()  );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(disp.getReason()  );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 }

      out.write("\n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
