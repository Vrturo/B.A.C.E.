$( document).ready(function() {
  setActive();
  checkBox();
  termsAndConditions();
  validateForm();
  alerts();
});

checkBox = function(){
  $("#agree").prop('checked', true);
  $("#agree").prop('checked', false);
}
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


validateForm = function(){
   $('#index_form_button').on('click', function(e){
    e.preventDefault();
    if($('#dropdown').index() !== 0 && $('#agree').is(':checked') &&
      $('.validate').each(function(index, element){
        this.value !== false
        })
      )
    {
     $('#index_form').submit();
    }
  })
}

alerts = function(){
  $('#index_form_button').on('click', function(){
    if($('#dropdown').index() == 0){
      alert("Please Select a Gender to move on!");
    };
    if($('#agree').is(':checked') == false){
      alert("You must agree with the terms and conditions to move on");
      return false;
    };
    $('.validate').each(function(index, element){
        if (this.value == false){
          alert("Please fill all fields")
        }
     })
  })
}



















