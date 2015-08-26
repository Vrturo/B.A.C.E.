$(document).ready(function() {
  renderSignInForm();
  renderSignUpForm();
  renderSignInFormFromNav();
  renderSignUpFormFromNav();
});

var renderSignInForm = function(){
  $('#homepageMessageButton').on('click', function(e){
    e.preventDefault();
    var cb = function(responseData){
      $('#homePageGrid').replaceWith(responseData)
    }
    ajaxGetForm('/users/sessions/new', 'GET', null, cb);
    });
  }

var renderSignUpForm = function(){
  $('a#signUpLink').on('click', function(e){
      e.preventDefault();
      var cb = function(responseData){
        $('#logInGrid').replaceWith(responseData)
      };
      ajaxGetForm('/users/new', 'GET', null, cb);
  });
};

var renderSignInFormFromNav = function(){
  $('#navSignInLink').on('click', function(e){
    e.preventDefault();
   var cb = function(responseData){
      $('.column').transition('fly right');
      setTimeout(function(){
        $('.column').replaceWith(responseData);
        $('.column').hide();
      }, 800);
      setTimeout(function(){
        $('.column').transition('fly right')
        }, 800);
    }
    ajaxGetForm('/users/sessions/new', 'GET', null, cb);
    });
  }

var renderSignUpFormFromNav = function(){
  $('#navSignUpLink').on('click', function(e){
    e.preventDefault();
    var cb = function(responseData){
      $('.column').transition('fly right');
      setTimeout(function(){
        $('.column').replaceWith(responseData);
        $('.column').hide();
      }, 800);
      setTimeout(function(){
        $('.column').transition('fly right')
        }, 800);
    }
    ajaxGetForm('/users/new', 'GET', null, cb);
    });
  }


var ajaxGetForm = function(url, method, data, callback){
  $.ajax({
        url: url,
        method: method
      })
      .done(function(responseData){
        callback(responseData);
      })
      .fail(function(responseData){
       console.log("Failed, FIX IT!")
      });
  }




