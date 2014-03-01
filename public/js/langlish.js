//langlish.js

$(document).ready(function(){

  $('#transform-text').click(function(){
    var translationValue = $('form #translation-select').val();
    var sentenceValue = $('form #langlish-input').val();

    var data = {
      translation: translationValue,
      original_text: sentenceValue
    };

    $.post('/translate',
      data, function(data){
        $('#langlish-output').val(data['translatedText']);
      });

  });

});