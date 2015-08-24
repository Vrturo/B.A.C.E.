$( document ).ready(function() {
  termsAndConditions();
 setActive();
});

termsAndConditions = function() {
  $('#terms').on('click', function (e){
    e.preventDefault();
  });
  $('#terms').popup({ on: 'click'
  });
  $('#index_form_button').on('click', function(e){
      e.preventDefault();
     if ($('#agree').is(':checked')) {
      $(this).submit();
      }
    else {
      alert("You must agree with the terms and conditions to move on");
      return false;
    }
  })
};

setActive = function() {
  $('a').each(function() {
    if ($(this).attr('href')  ===  window.location.pathname) {
      $(this).addClass('active');
    }
  });
};
