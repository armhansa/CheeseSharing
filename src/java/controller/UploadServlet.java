package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Sheets;
import tool.DBConnection;
import tool.Reaction;
import tool.ThaiName;

@MultipartConfig(maxFileSize = 999999999) // config file size 
@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
public class UploadServlet extends HttpServlet {

    private Connection conn;
    
    @Override
    public void init() {
        conn = DBConnection.getInstance().getConnection();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            request.setCharacterEncoding("UTF-8");
            
            HttpSession session = request.getSession();
            
            String title = request.getParameter("title");
            
            Part filePart = request.getPart("file_uploaded");
            
            ThaiName thaiName = ThaiName.getInstance();
            
            int facultyIndex = Integer.parseInt(request.getParameter("faculty"));
            String faculty = thaiName.getFaculty(facultyIndex);
            
            int categoryIndex = Integer.parseInt(request.getParameter("category"));
            String category = thaiName.getCategory(categoryIndex);
            
            String description = request.getParameter("description");
            String username = (String) session.getAttribute("Username");
            
            Reaction reaction = Reaction.getInstance();
            
            InputStream inputStream = null;
            if (filePart != null) {

                inputStream = filePart.getInputStream();
                try {
                    
                    String sql = "INSERT INTO SHEETS (Title, File, Faculty, Category, Description, USERS_Username) VALUES(?, ?, ?, ?, ?, ?)";
                    
                    Statement stmt = conn.createStatement();
                    stmt.execute("SET GLOBAL max_allowed_packet = 1024*1024*14;");
                    
                    PreparedStatement prStmt = conn.prepareStatement(sql);
                    
                    prStmt.setString(1, title);
                    
                    prStmt.setString(3, faculty);
                    prStmt.setString(4, category);
                    prStmt.setString(5, description);
                    prStmt.setString(6, username);
                    
                    if (inputStream != null) {
                        prStmt.setBlob(2, inputStream);
                        
                        int row = prStmt.executeUpdate();
                        if (row > 0) {
                            Sheets sheets = Sheets.getInstance();
                            sheets.update();
                            reaction.alert(out, "File uploaded!!!", 1);
                        } else {
                            reaction.alert(out, "Couldn't upload your file!!!", 1);
                        }
                    } else {
                        reaction.alert(out, "Couldn't upload your file!!!", 1);
                    }
                } catch(SQLException e) {
                    e.printStackTrace();
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
