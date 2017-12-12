package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    private Connection conn;
    
    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("Connection");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            request.setCharacterEncoding("UTF-8");
            
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String faculty = request.getParameter("faculty");
            
            out.println(firstName+lastName+username+password+email+faculty);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM USERS "+
                    "WHERE Username = '"+username+"'");
            if(rs.next()) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('This username is already used!');");
                out.println("location='index.html';");
                out.println("</script>");
            } else {
                PreparedStatement prStmt = conn.prepareStatement(
                        "INSERT INTO USERS(Username, Password, FirstName, LastName, Email, Faculty) VALUES(?, ?, ?, ?, ?, ?)");
                prStmt.setString(1, username);
                prStmt.setString(2, password);
                prStmt.setString(3, firstName);
                prStmt.setString(4, lastName);
                prStmt.setString(5, email);
                prStmt.setString(6, faculty);
                int row = prStmt.executeUpdate();
                
                if(row > 0) {
                    out.println("<h1>Sucessful</h1>");
                    
                    request.setAttribute("username", username);
                    request.setAttribute("password", password);
                    
                    RequestDispatcher dispatcher = request.getRequestDispatcher("LoginServlet");
                    dispatcher.forward(request, response);
                } else {
                    out.println("<h1>Error : Update to Database</h1>");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Error : Update to Database');");
                    out.println("location='index.html';");
                    out.println("</script>");
                }
                   
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
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
