$(document).ready(function() {
  renderSignInForm();
  renderSignInFormFromNav();
  renderSignUpFormFromNav();
  renderMap();
  checkDrivers();
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
  $('#massiveButton').on('click', function(e){
    e.preventDefault();
    var cb = function(responseData){
      $('#shit').transition('fly left');
      setTimeout(function(){
        $('#shit').replaceWith($('#rapper'));
        $('#rapper').show();
        $('#grid').append($('checkDrivers'));
        $('body').append(responseData);
      }, 800);
    }
    ajaxGetForm('/users/calculate/map', 'GET', null, cb);
    });
}

var checkDrivers = function(){
  $('#checkDrivers').on('click', function(e){
    e.preventDefault();
    var cb = function(responseData){
      console.log(responseData)
      $('#shit').transition('fly left');
      setTimeout(function(){
        $('#shit').replaceWith(responseData);
        $('#shit').hide();
      }, 800);
    }
    ajaxGetForm('/users/calculate/checkdrivers', 'GET', null, cb);
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
