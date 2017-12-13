package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import tool.DBConnection;

public class Sheets {
    
    private static Sheets sheetsInstance;
    
    private List<Sheet> sheets;
    private Connection conn;
    
    private Sheets() {
        sheets = new ArrayList<>();
        conn = DBConnection.getInstance().getConnection();
    }
    
    public static Sheets getInstance() {
        if(sheetsInstance == null){
            sheetsInstance = new Sheets();
        }
        return sheetsInstance;
    }
    
    public void addSheet(Sheet sheet) {
        sheets.add(sheet);
    }
    
    public Sheet getSheet(int index) {
        return sheets.get(index);
    }
    
    public List<Sheet> getSheets() {
        return sheets;
    }

    public void update() {
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(
                    "SELECT idSheet, Title, Faculty, Category, Description, ViewCount FROM SHEETS");
            sheets.clear();
            while(rs.next()) {
                Sheet sheet = new Sheet();
                sheet.setIdSheet(rs.getInt("idSheet"));
                sheet.setTitle(rs.getString("Title"));
                sheet.setFaculty(rs.getString("Faculty"));
                sheet.setCategory(rs.getString("Category"));
                sheet.setDescription(rs.getString("Description"));
                sheet.setViewCount(rs.getInt("ViewCount"));
                sheet.setUsersUsername(rs.getString("USERS_Username"));
                addSheet(sheet);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Sheets.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
