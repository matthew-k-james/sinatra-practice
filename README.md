# Ruby sinatra practice

## Purpose

This repo is designed to practice the concepts we've already covered.

 - [ ] Basics of Ruby, methods, conditionals, loops
 - [ ] Basic OOP within Ruby
 - [ ] Web requests (HTTP), HTML, CSS
 - [ ] Using an MVC design approach to split up code
 - [ ] Test driven development with Ruby
 - [ ] Collaboration using Git and GitHub
 - [ ] Continuous Integration
 - [ ] Continuous Deployment
 - [ ] Linting
 - [ ] Code coverage reporting
 
As well as introduce some new:

 - [ ] [Rack test](http://sinatrarb.com/testing.html)

## ToDos

* Create a model which calculates a "Cool Score".  See below.
* Create a page which has a form where you enter in the values for the calculation.
* Create a page which calculates the cool score and displays that to the user.


## Cool Score

This is a fictional value with no meaning.  It is calculated from the following fields.  With the following rules.

Fields:

* First name
* Age
* Favourite colour with a dropdown list of values (Green, Red, Orange, Blue)
* Height in meters

Calculation:

Your cool score is initially zero and is calculated by the following algorithm:

* Increase cool score by 10 if first name starts with an "A"
* Increase cool score by 14 if first name ends with a "N"
* Your cool score is increased by 0.5 * age, with no half points.  Any decimal value is ignored, e.g. 4.5 -> 4
* Your cool score is adjusted based on favourite colour: Orange +5, Red +3, Blue -1, Green -5.
* If your height is between 1.5 and 1.9 meters your cool score is doubled (after calculating everything above).

The calculation above should produce a numerical cool score as a whole number.
