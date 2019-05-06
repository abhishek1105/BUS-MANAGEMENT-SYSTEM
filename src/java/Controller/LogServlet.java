
package Controller;

import Model.User;
import Model.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()){        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String account = request.getParameter("account");
        User u = new User();
        u.setUsername(username);
        u.setPassword(password);
        u.setAccount(account);        
        UserDAO ud = new UserDAO();
      if(ud.check(u) && "Student".equals(u.getAccount()))
      {
          HttpSession s= request.getSession();
          s.setAttribute("username",username);
          response.sendRedirect("DashboardServlet");
      }
      else if(ud.check(u) && "Faculty".equals(u.getAccount()))
      {
          HttpSession s= request.getSession();
          s.setAttribute("username",username);
         response.sendRedirect("Dashboard2Servlet");
      }
      else if(ud.check(u) && "Admin".equals(u.getAccount()))
      {
          HttpSession s= request.getSession();
          s.setAttribute("username",username);
          response.sendRedirect("HOMEPAGEADMIN.jsp");
      }
      else{
           HttpSession s= request.getSession();
           s.setAttribute("LoginFailed","failed");
           response.sendRedirect("LOGIN.jsp");
      }
        }
        catch(Exception e){
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
