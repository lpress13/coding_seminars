# Employee Reviews

## Description

Create classes to track employees and their departments, interpret employee reviews, and give out raises to those with good reviews.

## Objectives

After completing normal mode, you should...

* Understand the basics of Object Oriented Programming
* Be able to write your own classes and instantiate them into objects
* Be able to use keyword arguments

After completing hard mode, you should...

* Understand simple classification problems
* Reflect on how natural language can be read by a computer to convert it to quantitative data
* Be able to use regular expressions

After completing nightmare mode, you should...

* Understand blocks in Ruby (crazy stuff!)
* Be able to write a method which calls a block

## Deliverables

* **An Employee class in its own file.**
* **A Department class in its own file.**
* **A third file called `development.rb` which calls various methods in your classes.**

## Normal Mode

You want to keep track of employees (with their names, email addresses, phone numbers, and salaries), departments (with their names), and which employees are in which department.  You should be able to:

* Create a new department (given its name).
* Create a new employee (given his/her name, email address, phone number, and salary).
* Add an employee to a department.
* Get an employee's name.
* Get an employee's salary.
* Get a department's name.
* Get a total salary for all employees in a department.
* Add some employee review text (a paragraph or two) to an employee.
* Mark whether an employee is performing satisfactorily or not satisfactorily.
* Give a raise to an individual.  You decide if this makes sense in dollars or in percent.
* Give raises to a department's employees.  You must pass this method a total dollar amount, and it must distribute the raise amounts reasonably to the department's employees.  Only employees who are performing satisfactorily should get raises.

At this stage, your code should:

* Use keyword arguments at least once.
* Be delivered using a GitHub repository.  We haven't talked about these in class yet, but give it a shot on your own.  This will prime you for faster learning in the next lesson.  Submit a link to your GitHub repository on the homework submission form.

#### Hard Mode

As part of this repository, you have a file called `sample_reviews.txt`.  This file includes two negative employee reviews and two positive employee reviews.  Your task is to write a method on the employee class which looks the employee review text stored in an employee instance variable (in Part 1) and return a `true` or `false` for whether this employee is performing satisfactorily.  This also means that you will be removing the ability for users to manually mark whether an employee is performing satisfactorily.  This will now be determined by code.

Regular expressions will be your friend here.  Even so, this is not an easy problem.  It is in a category of problems called "Natural Language Processing," and since you are attempting to take reviews and place them in one of two buckets (satisfactory or not), it is known as a "Classification" problem.

At this stage, your code should:

* No longer let you mark whether an employee is satisfactory or not.  Instead, you will have a method for saving the employee review text, and you will have another method which returns true or false based on whether the text is satisfactory or not.
* Use at least one non-trivial regular expression (i.e. Don't just look for a literal string like `/good/`).
* Include at least two other sample employee reviews you've found online (or in your past) and rated them as satisfactory or not.

We have not talked about regular expressions yet, but we will in an upcoming class.  In the meantime, you might find these links helpful:

* My favorite tutorial for learning Regular Expressions is [RegexOne](http://regexone.com/)
* The best way to fiddle with Regex is [Rubular](http://rubular.com/)

#### Nightmare Mode

Once your baseline app is complete, modify your method on Departments which gives out raises.  It should now take a block which will specify which employees are eligible for raises.  Prior to this stage, you only allowed "satisfactory" employees to get raises, but now it can be more flexible.

For instance, if a department had $5,000 to spread out to its employees in raises, but you wanted to only give raises to people who only made less than $100,000, you could call a `give_raises` method like this:

    department.give_raises(5000) do |employee|
      employee.salary < 100000
    end

At this stage, your code should:

* Have a method which takes a block and calls `yield`.
