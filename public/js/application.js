$( document).ready(function() {
  setActive();
  termsAndConditions();
  alerts();
  welcomeJiggle();
});

termsAndConditions = function() {
  $('#terms').on('click', function (e){
    e.preventDefault();
  });
  $('#terms').popup({ on: 'click'
  });
};

setActive = function() {
  $('a').each(function() {
    if ($(this).attr('href')  ===  window.location.pathname) {
      $(this).addClass('active');
    }
  });
};

alerts = function(){
  $('#index_form_button').on('click', function(){
    if($('#dropdown').val() == "gender"){
      alert("Please Select a Gender to move on!");
    };
    if($('#agree').is(':checked') == false){
      alert("You must agree with the terms and conditions to move on");
      return false;
    };
  })
}
validateForm = function(){
   $('#index_form_button').on('click', function(e){
    if($('#dropdown').val() == "gender" && $('#agree').is(':checked') == false)
    {
     e.preventDefault();
    }
  })
}

welcomeJiggle = function(){
  $('#welcome').on('hover', function(){
    $('#welcome').transition('jiggle');
  })
}
