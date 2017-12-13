package listener;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;
import model.Sheet;
import model.Sheets;
import tool.DBConnection;

public class Init implements ServletContextListener {
    
    private Connection conn;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            conn = getCheets_sharing().getConnection();
            
            DBConnection dBConnection = DBConnection.getInstance();
            dBConnection.setConnection(conn);
            
            Sheets sheets = Sheets.getInstance();
            
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(
                    "SELECT idSheet, Title, Faculty, Category, Description, ViewCount, USERS_Username FROM SHEETS");
            while(rs.next()) {
                Sheet sheet = new Sheet();
                sheet.setIdSheet(rs.getInt("idSheet"));
                sheet.setTitle(rs.getString("Title"));
                sheet.setFaculty(rs.getString("Faculty"));
                sheet.setCategory(rs.getString("Category"));
                sheet.setDescription(rs.getString("Description"));
                sheet.setViewCount(rs.getInt("ViewCount"));
                sheet.setUsersUsername(rs.getString("USERS_Username"));
                sheets.addSheet(sheet);
            }
            
            sce.getServletContext().setAttribute("Connection", conn);
        } catch (NamingException | SQLException ex) {
            Logger.getLogger(Init.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Init.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private DataSource getCheets_sharing() throws NamingException {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/cheets_sharing");
    }

}
