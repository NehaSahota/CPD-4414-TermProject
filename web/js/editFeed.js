/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    $('.feedbackDel').click(function() {
        var feedbackId = $(this).attr("id");
        $.ajax({
            url: "./rs/feedback/" + feedbackId,
            dataType: "json",
            contentType: 'application/json; charset=UTF-8',
            method: "delete",
            success: function(data) {
                window.location.href = "./ViewFeedback.jsp";
            }
        });
    });
    $('#editFeedbackSave').click(function() {
        var feedbackName = $('#feedbackNameEdit').val();
        var res = {name: $('#feedbackNameEdit').val()};
        var feedbackId = $('#feedbackIdEdit').val();
        if (feedbackName === '') {
            $("#dialogErr").text("Please enter name.");
        } else {
            $.ajax({
                url: './rs/feedback/' + feedbackId,
                type: 'PUT',
                data: JSON.stringify(res),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function(data) {
                    $("#dialogErr").text("");
                    window.location.href = "./ViewFeedback.jsp";
                }
            });
        }
    });
    
    
   $(document).ready(function() {
    $('#saveFeedback').click(function() {
        
        var category = $('#categ').val();
        var feedback = $('#feedback').val();
        if (feedback === '') {
            $("#dialogErr").text("Please enter feedback.");
        } else {
            $.ajax({
                url: "./rs/feedback/",
                type: 'POST',
                data:  JSON.stringify({
                            "id" : $('#studentId').val(),
                            "category": $('#categ').val(),
                            "feedback" :$('#feedback').val()
                        }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function(data) {
//                    $("#closeCustomerDialog").click();
//                    $("#dialogErr").text("");
                    window.location.href = "./Welcome.jsp";
                }
            });
        }
    });
  
});
});