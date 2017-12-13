package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import tool.Reaction;

@MultipartConfig(maxFileSize = 999999999) // config file size 
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
            request.setCharacterEncoding("UTF-8");
            
            
            
            HttpSession session = request.getSession();
            
            String title = request.getParameter("title");
            out.println("<h1>2</h1>");
            Part filePart = request.getPart("file_uploaded");
            String category = request.getParameter("category");
            String faculty = request.getParameter("faculty");
            switch(Integer.parseInt(request.getParameter("faculty"))) {
                case 1:
                    faculty = "";break;
                case 2;
            }
            String description = request.getParameter("description");
            String username = (String) session.getAttribute("Username");
            
            Reaction reaction = Reaction.getInstance();
            
            InputStream inputStream = null;
            if (filePart != null) {
                out.println("<h1>"+filePart.getName()+"</h1>");
                out.println("<h1>has file path</h1>");
                out.println(filePart.getName());
                out.println(filePart.getSize());
                out.println(filePart.getContentType());

                inputStream = filePart.getInputStream();
                try {
                    out.println("<h1>4</h1>");
                    String sql = "INSERT INTO SHEETS (Title, Faculty, Category, Description, USERS_Username) VALUES(?, ?, ?, ?, ?)";
                    
                    PreparedStatement prStmt = conn.prepareStatement(sql);
                    out.println("<h1>5</h1>");
                    prStmt.setString(1, title);
                    prStmt.setString(2, faculty);
                    prStmt.setString(3, category);
                    prStmt.setString(4, description);
                    prStmt.setString(5, username);
                    
                    prStmt.executeUpdate();
                    
                    if (inputStream != null) {
                        out.println("<h1>6</h1>");
                        prStmt.setBlob(2, inputStream);
                        out.println("<h1>7</h1>");
                        out.println(title+filePart.getName()+faculty+category+description+username);
                        int row = prStmt.executeUpdate();
                        out.println(row);
                        out.println("<h1>8</h1>");
                        if (row > 0) {
                            out.println("<h1>Success</h1>");
                            reaction.alert(out, "File uploaded!!!", 1);
                        } else {
                            out.println("<h1>Upload Failed</h1>");
                            reaction.alert(out, "Couldn't upload your file!!!", 1);
                        }
                    } else {
                        out.println("<h1>inputStream is null</h1>");
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
