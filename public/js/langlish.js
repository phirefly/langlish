//langlish.js

$(document).ready(function(){

  $('#transform-text').click(function(){
    var input = $('#langlish-input').val();

    $.ajax({
      url: "/translate",
      context: document.body
    }).done(function() {
      $('#langlish-output').val('*** output *** ');
    });

  });

});