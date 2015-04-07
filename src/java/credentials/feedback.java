/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package credentials;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObjectBuilder;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 *
 * @author c0646567
 */
@Path("/feedback")
public class feedback {
    @GET
    @Produces("application/json")
    public String doGet() {
        String str = getResults("SELECT * FROM feedback");
        return str;
    }
    
     
    @GET
    @Path("{id}")
    @Produces("application/json")
    public String doGet(@PathParam("id") String id) {
        String str = getResults("SELECT * FROM feedback where id = ?", id);
        return str;
    }
    
    private String getResults(String query, String... params) {
        JsonArrayBuilder productArray = Json.createArrayBuilder();
        String myString = new String();
        int inside=0;
        try (Connection conn = Credentials.getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(query);
            for (int i = 1; i <= params.length; i++) {
                pstmt.setString(i, params[i - 1]);
                inside=1;
            }

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {

                JsonObjectBuilder jsonob = Json.createObjectBuilder()
                        .add("feedback_id", rs.getInt("feedback_id"))
                        .add("id", rs.getString("id"))
                        .add("feedback", rs.getString("feedback"))
                        .add("category", rs.getString("category"));
                       


                productArray.add(jsonob);
            }

        } catch (SQLException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }

            myString = productArray.build().toString();

        return myString;
    }
       
       private int doUpdate(String query, String... params) {
        int numChanges = 0;
        try (Connection conn = Credentials.getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(query);
            for (int i = 1; i <= params.length; i++) {
                pstmt.setString(i, params[i - 1]);
            }
            numChanges = pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }
        return numChanges;
    }
    
    
}
