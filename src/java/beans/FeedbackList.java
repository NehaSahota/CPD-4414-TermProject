/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import credentials.Credentials;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author c0646567
 */
public class FeedbackList {

    private List<Feedback> feedbackList = new ArrayList<>();

    public FeedbackList() {
    }

    public List<Feedback> getFeedbackList() {
        return feedbackList;
    }

    public void setFeedbackList(List<Feedback> feedbackList) {
        this.feedbackList = feedbackList;
    }

    public void getFeedbackData(String query) throws SQLException {
        Connection conn = Credentials.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();
        List<Feedback> feedbackList = new <Feedback>ArrayList();
        while (rs.next()) {
            Feedback feed = new Feedback();
            feed.setFeedback_id(rs.getString("feedback_id"));
            feed.setId(rs.getString("id"));
            feed.setDate(rs.getString("date"));
            feed.setFeedback(rs.getString("feedback"));
            feed.setCategory(rs.getString("category"));
            feedbackList.add(feed);
        }
        setFeedbackList(feedbackList);
    }

}
