/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
$('.feedbackUpdate').click(function() {
        //var feedbackId = $(this).attr("feedbackId");
        var studentId = $('#studentId').val();
         var feedbackId = $('#editPagefeedbackId').val();
        $.ajax({
            url: './rs/feedback/' + studentId + '/' + feedbackId,
            type: 'PUT',
            data: JSON.stringify({
                "category": $('#categ').val(),
                "feedback": $('#editedFeedback').val()
            }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function(data) {
                $("#dialogErr").text("");
                window.location.href = "./ViewFeedback.jsp";
            }
        });

});
});
