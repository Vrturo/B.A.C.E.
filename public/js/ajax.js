$(document).ready(function() {
  renderSignInForm();
  renderSignInFormFromNav();
  renderSignUpFormFromNav();
  renderMap();
});

var renderSignInForm = function(){
  $('#homepageMessageButton').on('click', function(e){
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

var renderMap = function(){
  $('#clickMe').on('click', function(e){
    e.preventDefault();
    var cb = function(responseData){
      $('#bacBanner').transition('swing down');
      setTimeout(function(){
        $('#bacBanner').replaceWith(responseData);
        $('#bacBanner').hide();
      }, 1200);
    }
    ajaxGetForm('/users/calculate/map', 'GET', null, cb);
    });
}

var ajaxGetForm = function(url, method, data, callback){
  $.ajax({
        url: url,
        method: method
      })
      .done(function(responseData){
        console.log(responseData)
        callback(responseData);
      })
      .fail(function(responseData){
       console.log("Failed, FIX IT!")
      });
  }
