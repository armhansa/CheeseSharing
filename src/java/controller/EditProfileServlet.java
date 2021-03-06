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
import tool.DBConnection;
import tool.Reaction;
import tool.ThaiName;

@WebServlet(name = "EditProfileServlet", urlPatterns = {"/EditProfileServlet"})
public class EditProfileServlet extends HttpServlet {
    
    private Connection conn;
    
    @Override
    public void init() {
        conn = DBConnection.getInstance().getConnection();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            request.setCharacterEncoding("UTF-8");
            
            // get Parameter
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String oldPassword = request.getParameter("oldPassword");
            String newPassword = request.getParameter("newPassword");
            
            ThaiName thaiName = ThaiName.getInstance();
            
            int facultyIndex = Integer.parseInt(request.getParameter("faculty"));
            String faculty = thaiName.getFaculty(facultyIndex);
            
            // Session
            HttpSession session = request.getSession();
            String userName = (String) session.getAttribute("Username");
            
            Statement stmt = conn.createStatement();
            String sql = "SELECT Password FROM USERS WHERE Username = '"+userName+"' "
                    + "AND Password = '"+oldPassword+"'";
            
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next()) {
                Statement stmt2 = conn.createStatement();
                if(newPassword != null && !"".equals(newPassword)) {
                    sql = "UPDATE USERS "
                    + "SET FirstName = '"+firstName
                    +"', LastName = '"+lastName
                    +"', Password = '"+newPassword
                    +"', Faculty = '"+faculty+"' "
                    + "WHERE Username = '"+userName+"'";
                } else {
                    sql = "UPDATE USERS "
                    + "SET FirstName = '"+firstName
                    +"', LastName = '"+lastName
                    +"', Faculty = '"+faculty+"' "
                    + "WHERE Username = '"+userName+"'";
                }
                out.println(sql);
                
                int row = stmt2.executeUpdate(sql);
                if(row > 0) {
                    Reaction.getInstance().alert(out, "Update Successful!", 2);
                } else {
                    Reaction.getInstance().alert(out, "Update Failed1!!!", 2);
                }
            } else {
                Reaction.getInstance().alert(out, "Update Failed2!!!", 2);
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
            Logger.getLogger(EditProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(EditProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
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
