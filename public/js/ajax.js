// $(document).ready(function() {
//   homePage();
//   renderSignUp();
// });

// var homePage = function(){
//   $('#homepageMessageButton').on('click', function(e){
//     e.preventDefault();
//     var login = $('#logInForm')
//     var getLoginForm =
//         $.ajax({
//         url: "/users/sessions/new",
//         method: "GET"
//       });

//       getLoginForm.done(function(responseData){
//         console.log(responseData);
//         if (responseData == "success"){
//         $('#homePageGrid').hide();
//         $('body').append($('#logInForm'));
//         }
//       });
//        getLoginForm.fail(function(responseData){
//        console.log("Failed, FIX IT!")
//       })
//     });
//   }


// var renderSignUp = function(){
//   $('a#signUpLink').on('click', function(e){
//       e.preventDefault();
//   })
// }
