# Weather Report

## Description

Build a Ruby application to pull data from multiple Weather Underground API endpoints and present a weather report to the user.

## Objectives

After completing this assignment, you should...

* Understand the purpose and structure of Web APIs
* Understand JSON structure
* Be able to access an API using a token
* Be able to make HTTP requests via HTTParty
* Be able to create a Ruby class which wraps API calls
* Have gained more experience using TDD

## Deliverables

* **A GitHub repository.**
* **A quality README.**
* **A test suite.**

## Normal Mode

Your task is to create a Ruby application which will query API endpoints from Weather Underground, and will present a weather summary to the user.  When the user runs the application, he or she will be asked for a zip code, and the summary will be for that location.

Your summary will be `puts`'ed to the screen, and must include the following (information):

* Current conditions at that location

Make sure that the summary you display is easy to read for users.  A pile of numbers with no descriptors won't do anyone any good.

You must use at least one Ruby class for the code, and at least one Ruby class for the tests.  In the course of running your code, you must instantiate objects from that class.

Testing is going to be tricky on this one.  You don't have to test everything, but you do need at least three solid tests for this assignment to be considered complete.

No database is needed for Normal Mode.

## Hard Mode

In order to complete hard mode, your application must return the following information in addition to the current conditions:

* 10 day forecast for that location
* Sunrise and sunset times
* Any current weather alerts
* A list of all active hurricanes (anywhere)

Your code must be written in classes and be spread across multiple files.  It is suggested that you build one class for each API endpoint which you access, and then you create instances of each class when you have parameters to make a call to that endpoint.  If you can think of a better way that still involves classes, though, go for it.

No database is needed for Hard Mode.

## Nightmare Mode

Store the responses in a database so that if the same request is made twice by your users, the information is pulled out of the database rather than hitting the APIs each time.

## Additional Resources

* [HTTParty](https://github.com/jnunemaker/httparty)
* [Weather Underground documentation](http://www.wunderground.com/weather/api/d/docs?MR=1)
