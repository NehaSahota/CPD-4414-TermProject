/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import credentials.Credentials;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author c0646567
 */
public class Feedback {

    private String feedback_id;
    private String id;
    private String date;
    private String feedback;
    private String category;

    public Feedback() {
        feedback_id = "";
        id = "";
        date = "";
        feedback = "";
        category = "";

    }

    public String getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(String feedback_id) {
        this.feedback_id = feedback_id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        System.out.println("id is " +id);
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void GetFeedback() throws SQLException {
       

        Connection conn = Credentials.getConnection();
        String query = "SELECT * FROM feedback WHERE id = '" + id + "';";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        while (rs.next()) {
            feedback_id = rs.getString("feedback_id");
            id = rs.getString("id");
            date = rs.getString("date");
            feedback = rs.getString("feedback");
            category = rs.getString("category");

        }
       
        stmt.close();
        conn.close();

    }
    
    
     public void AddFeedback() {
        try (Connection conn = Credentials.getConnection()) {

            String query = "INSERT INTO feedback (id , category , feedback) VALUES ('"+ id +"' , '" + category + "','" + feedback + "')";
            Statement stmt = conn.createStatement();
            try {
                stmt.executeUpdate(query);
                stmt.close();
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(Student.class.getName()).log(Level.SEVERE, null, ex);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Student.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    
    
        public void DeleteFeedback() throws SQLException {
       

        Connection conn = Credentials.getConnection();
        String query = "DELETE * FROM feedback WHERE feedback_id = '" + feedback_id + "'";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        stmt.close();
        conn.close();

    }
        
        
         public void UpdateFeedback() throws SQLException {
        try (Connection conn = Credentials.getConnection()) {
            try {
                String query = "UPDATE feedback SET feeback = '" + feedback + "'  WHERE feedback_id = '" + feedback_id + "'";
                Statement stmt = conn.createStatement();
                stmt.executeUpdate(query);
                
                
                stmt.close();
                conn.close();

            } catch (SQLException ex) {
                Logger.getLogger(Student.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }


}
