# Rails Code Challenge Assessment

## Objectives (what we're assessing)

* MVC
* REST
* Request/Response Cycle
* Form/Form Helpers
* ActiveRecord
* Validations

## Setup

Before you begin, fork and clone this repo, run `bundle install` and `rake db:migrate` to get started.

## The Domain

Congrats! You've been hired by ***WeBots~ltd~*** to help track the way they outfit their variety of robots. The company has decided to create a rails app where a user can create Robots and assign one of many functions to each.

Your teammate has already started work on the site. They've added a `Robot` model and an `Ability` model, and set up a `seeds.rb` file to reflect the initial state of the company's inventory. However, the relationship between these models has not been established. Each ability can be bestowed upon ***more than one robot***, and each robot has ***one ability***.

Once you've set up the relationship between models and seeded the database, you can visit `/robots` to display the existing Robots, and `/abilities` to display Abilities. 
