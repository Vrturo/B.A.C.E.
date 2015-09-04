$(document).ready(function() {
  uberOauth();
});

var uberOauth = function(){
$('navSignInLink').on('click', function(e){
      e.preventDefault();
      var cb = function(responseData){
        $('#logInGrid').replaceWith(responseData)
      };
      ajaxGetForm('https://login.uber.com/oauth/authorize', 'GET', null, cb);
  });
}

var uber_api = OAuth2Service(
     client_id='9z6pxBTjyMZZHtdIOndfCfN1pnl_v8q7',
     client_secret='EfTCPMFKjADsFW6kZl8HO8TUkex9f-M8P80nFkCH',
     name='B.A.C.E.',
     authorize_url='https://login.uber.com/oauth/authorize',
     access_token_url='https://login.uber.com/oauth/token',
     base_url='https://api.uber.com/v1/',
 )

var parameters = {
    'response_type': 'code',
    'redirect_uri': 'INSERT_ROUTE_TO_STEP_TWO',
    'scope': 'profile',
}

var login_url = uber_api.get_authorize_url(**parameters)

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
