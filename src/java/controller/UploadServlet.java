package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import tool.Reaction;

@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
public class UploadServlet extends HttpServlet {

    private Connection conn;
    
    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("Connection");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            InputStream inputStream = null;
            HttpSession session = request.getSession();
            
            String title = request.getParameter("title");
            Part filePart = request.getPart("file_uploaded");
            String category = request.getParameter("category");
            String faculty = request.getParameter("faculty");
            String description = request.getParameter("description");
            String username = (String) session.getAttribute("Username");            
            
            Reaction reaction = Reaction.getInstance();
            if (filePart != null && "application/pdf".equals(filePart.getContentType())) {
                out.println(filePart.getName());
                out.println(filePart.getSize());
                out.println(filePart.getContentType());

                inputStream = filePart.getInputStream();
                try {
                    String sql = "INSERT INTO SHEETS(Title, File, Faculty, Category, Description, USERS_Username) VALUES(?, ?, ?, ?, ?, ?)";
                    
                    PreparedStatement prStmt = conn.prepareStatement(sql);
                    
                    prStmt.setString(1, title);
                    prStmt.setString(3, faculty);
                    prStmt.setString(4, category);
                    prStmt.setString(5, description);
                    prStmt.setString(6, username);
                    
                    if (inputStream != null) {
                        prStmt.setBinaryStream(2, inputStream, (int) filePart.getSize());
                        int row = prStmt.executeUpdate();
                        if (row > 0) {
                            reaction.alert(out, "File uploaded!!!", 1);
                        } else {
                            reaction.alert(out, "Couldn't upload your file!!!", 1);
                        }
                    } else {
                        reaction.alert(out, "Couldn't upload your file!!!", 1);
                    }                    
                } catch(SQLException e) {
                    reaction.alert(out, "Couldn't upload your file!!!", 1);
                }
            } else {
                reaction.alert(out, "Please select PDF file.", 1);
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
