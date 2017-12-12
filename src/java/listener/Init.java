package listener;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

public class Init implements ServletContextListener {
    
    private Connection conn;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            conn = getCheet_sharing().getConnection();
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

    private DataSource getCheet_sharing() throws NamingException {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/cheet_sharing");
    }
    
}
