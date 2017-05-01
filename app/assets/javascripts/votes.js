// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
$('#upvote').on('click', 'a', function(e) {
 e.preventDefault();
  var currentTarget = $(e.currentTarget);
  var voteLinksDiv = currentTarget.parents('.vote-links');

   if (currentTarget.is('#upvote')) {
    currentTarget.css({color: 'green'});
    voteLinksDiv.find('#downvote').css({color: '#333'});
   }

   else {
    currentTarget.css({color: 'red'});
    voteLinksDiv.find('#upvote').css({color: '#333'});
   }

  $.ajax({
    url: currentTarget.attr('href'),
    method: 'POST',
  data: { format: 'json' },
    dataType: 'json',
    complete: function(xhr, textStatus) {
    voteLinksDiv.find('#upvote').text(xhr.responseJSON.upvote);
    voteLinksDiv.find('#downvote').text(xhr.responseJSON.downvote);
  }
  });
 return false;
 });
});
// ================================================================================
//

 $(".downvote").on("click", function(event) {
   event.preventDefault();
   var ReviewId = this.parentElement.parentElement.parentElement.id;
   var $t = $(this).parent().parent();
   $.ajax({
     method: "POST",
     url: ("/reviews/" + ReviewId + "/downvote"),
     data: { review_id: ReviewId },
     dataType: "json"
   }).done(function(data){
     $($t.siblings("#score")).text(data);
   })
 });
