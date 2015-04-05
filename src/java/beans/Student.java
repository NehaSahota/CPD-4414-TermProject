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
import java.sql.SQLException;
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
                
            String query = "INSERT INTO student (firstName,lastName,email,address,password) VALUES ('"+firstName+"','"+lastName+"','"+email+"','"+email+"','"+address+"','"+password+"')";
            PreparedStatement pstmt = conn.prepareStatement(query);
                try{
                    pstmt.executeUpdate();
                    conn.close();
                }catch (SQLException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
                }
    
    } catch (SQLException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    }
    
    
    
    
}
