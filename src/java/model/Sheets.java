/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author armha
 */
public class Sheets {
    
    private static Sheets sheetsInstance; 
    
    private Sheets(){}
    
    public static Sheets getSheetsInstance(){
        if(sheetsInstance == null){
            sheetsInstance = new Sheets();
        }
        return sheetsInstance;
    }     
}
