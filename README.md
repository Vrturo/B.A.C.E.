B.A.C.E.(Blood Alcohol Content Estimator) is a web app that uses Uber's API to log in, create an account, and is used to let users know an estimate of what their BAC(blood alcohol content) would be based on an algorithm that takes the amount of fluid ozs of alcohol they've had, their weight, their gender, and the amount of time they've been drinking. If their BAC is too high it recommends they order an Uber ride and get home safely.

This web app was made with Sinatra, Ruby, and Javascript. And with the help of the Uber API of Chart.Js and and Google Maps API it shows a chart of what their current BAC would be at and recommends they take an Uber ride home from where they are at.


Steps when cloned:

cd B.A.C.E.

Bundle Install

be rake db:create

be rake db:migrate

be shotgun

https://localhost:9393

--------------
This is definitely a fun project I worked on for a bit. If you have any suggestions on how to improve this or if you'd like to add to it, feel free to email me at VrturoPerez@gmail.com

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
