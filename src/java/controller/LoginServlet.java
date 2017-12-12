package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    
    private Connection conn;
    
    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("Connection");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            response.setContentType("text/html;charset=UTF-8");
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            out.println("<h1>1</h1>");
            Statement stmt = conn.createStatement();
            out.println("<h1>2</h1>");
            ResultSet rs = stmt.executeQuery("SELECT * FROM USERS "+
                    "WHERE Username = '"+username+
                    "' AND Password = '"+password+"'");
            out.println("<h1>3</h1>");
            if(rs.next()) {
                out.println("<h1>Successfull</h1>");
                User user = new User();
                user.setUserName(username);
                user.setFirstName(rs.getString("FirstName"));
                user.setLastName(rs.getString("LastName"));
                user.setEmail(rs.getString("Email"));
                user.setFaculty(rs.getString("Faculty"));
                user.setStatus(rs.getString("Status"));
                user.setProfile(rs.getString("Profile"));
                
                HttpSession session = request.getSession();
                session.setAttribute("Username", username);
                session.setAttribute("User", user);
                
                response.sendRedirect("homepage.html");
            } else {
                out.println("<h1>Failed</h1>");
                
//                out.println("<script type=\"text/javascript\">");
//                out.println("alert('Not Complete');");
//                out.println("location='index.html';");
//                out.println("</script>");
//                out.println("<h1>Not Complete</h1>");
//                
//                response.sendRedirect("index.html");
            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
