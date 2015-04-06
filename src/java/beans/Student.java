/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import credentials.Credentials;
import credentials.test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author c0646567
 */
public class Student {
    
    private String id;
    private String firstName;
    private String lastName;
    private String email;
    private String address;
    private String password;

    public Student() {
        id="";
        firstName="";
        lastName="";
        email="";
        address="";
        password="";
  
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public void RegisterUser(){
            try (Connection conn = Credentials.getConnection()) {
                
            String query = "INSERT INTO student (firstName,lastName,email,address,password) VALUES ('"+firstName+"','"+lastName+"','"+email+"','"+address+"','"+password+"')";
            Statement stmt = conn.createStatement();
                try{
                    stmt.executeUpdate(query);
                    stmt.close();
                    conn.close();
                }catch (SQLException ex) {
            Logger.getLogger(Student.class.getName()).log(Level.SEVERE, null, ex);
                }
    
    } catch (SQLException ex) {
            Logger.getLogger(Student.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    }
    
    public static boolean LoginUser(String email, String pass){
        boolean check = false;
        try{
            
            Connection conn = Credentials.getConnection();
          
             PreparedStatement pstmt = conn.prepareStatement("Select * FROM student WHERE email = ? AND password = ?");
             pstmt.setString(1, email);
             pstmt.setString(2, pass);
             ResultSet rs = pstmt.executeQuery();
             check = rs.next();
             conn.close();

        }catch (SQLException ex) {
            Logger.getLogger(Student.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    
    }
    
    public void GetUser() throws SQLException{
    
     Connection conn = Credentials.getConnection();
     String query = "SELECT * FROM student WHERE email = '"+email+"'";
     Statement stmt = conn.createStatement();
     ResultSet rs = stmt.executeQuery(query);
     
     while(rs.next()){
         firstName = rs.getString("firstName");
         lastName = rs.getString("lastName");
         email = rs.getString("email");
         address = rs.getString("address");
         password = rs.getString("password");
     
     }
     
         stmt.close();
         conn.close();
     
     
    }
    
    
}
