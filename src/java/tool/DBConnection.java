package tool;

import java.sql.Connection;

public class DBConnection {
    
    private static DBConnection dBConnection;
    
    private Connection conn;
    
    private DBConnection() {
        
    }
    
    public static DBConnection getInstance() {
        if(dBConnection == null)
            dBConnection = new DBConnection();
        return dBConnection;
    }
    
    public Connection getConnection() {
        return conn;
    }
    
    public void setConnection(Connection conn) {
        this.conn = conn;
    }
    
}
