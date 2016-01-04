# B.A.C.E.(Blood Alcohol Content Estimator)

B.A.C.E.(Blood Alcohol Content Estimator) is a web app that uses Uber's API to create an account or log in, and is used to let users know an estimate of what their BAC(blood alcohol content) would be based on an algorithm that takes the amount of fluid ozs of alcohol they've had, their weight, their gender, and the amount of time they've been drinking. If their BAC is too high it recommends they order an Uber ride and get home safely.

NOTE: You can not order a ride home from the app. I set up a mock scenario on what the app would run like but ordering a ride through someone's app took extra permission from Uber that I didnt apply for.

Link to app:

bacestimator.herokuapp.com

## Technical Stack
------------------
#### Front End
For the front end I used a Front End framework called Semantic. It helped with positioning and styling of forms and thats about it. I used HTML/CSS to do all other styling and used Javascript to render DOM events like the rendering of the Google Map and Chart.



#### Back End
This web app was made with Sinatra. I used the user controller to help the logic of signing up and logging in existing users, and the user model to store the user's information. I used the calculation model to store the algorithm that takes the user parameters and does the calculation, and the calculate controller to make sure all the params are valid and passes the calculate logic to the view. I used three different API's to put this together. I used Uber's API to let a user create an account or sign in if they had an existing one. I used the Chart.Js API to let a user see how high their BAC is compared to the legal limit, if over it recommends they take an Uber ride home from where they are at. And I also used Google Maps API to sharea users location and recommend they'd take an uber to get home.


## Future Additions
--------------
This is definitely a fun project I worked on for a bit. If I had more time or if I did it over I'd use a bigger framework liek rails. My idea started small and kept getting bigger and with additional features a biger framework like rails would be ideal.

Also I used Uber's API to let a user log in but I would've liked it if I could let a user order a ride through the app. That took extra permissions from Uber that I didnt ask for.

<!--
PSEUDOCODE-------------------
BAC calculator 1 drink = 1.5oz shot of 80 proof liquor 40% 1 drink = 12oz (5% beer) 1 drink = 5oz wine(12%)

subtract .015% for every hour can vary based on amount of food in your stomach

asks for weight asks for gender asks for time you started drinking how many drinks you have had

Solution 1 ---------------- male = weight/2.2 * .58 drinks/weight - time

female = weight/2.2 * .? drinks/weight - time

Solution 2 ----------- male alcohol distribution ratio = .73 female alcohol distribution ratio = .9

bac = (liquid_oz_alcohol x 5.14/@weight x alcohol_distribution_ratio) – .015 x @hours_since_first_drink

User can sign up User can have a user_name User will have a password User will have a gender
=======
BAC calculator
1 drink = 1.5oz shot of 80 proof liquor 40%
1 drink = 12oz (5% beer)
1 drink = 5oz wine(12%)

subtract .015% for every hour
can vary based on amount of food in your stomach

asks for weight
asks for gender
asks for time you started drinking
how many drinks you have had

Solution 1 ----------------
male = weight/2.2 * .58
56.68
drinks/weight - time

female = weight/2.2 * .?
drinks/weight - time

Solution 2 -----------
male alcohol distribution ratio = .73
female alcohol distribution ratio = .9

bac = (liquid_oz_alcohol x 5.14/@weight x alcohol_distribution_ratio) – .015 x @hours_since_first_drink

User can sign up  x
User can have a user_name   x
User will have a password    x
User will have a gender


User can log in and log out  x

https://github.com/hannah/drinkdex/blob/master/lib/person_class.rb

https://github.com/andrem8/Blood-Alcohol-App/blob/master/app.rb
 -->
