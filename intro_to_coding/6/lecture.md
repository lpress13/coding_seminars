# Intro to Coding: Lecture 6

### Goals

* Understand SQL
* Be able to access the database with Active Record

### Lecture

* "Finishing" the class
* Homework Review: [Locky](https://www.lucidchart.com/documents/edit/9512fb72-bc25-4e57-82de-29f8f9a018eb?shared=true&)
  * Naming/capitalization
  * Selected data types
* SQL
  * [Database file](lecture.sqlite3)
  * Find all people
  * Find all people with a last name of “Smith” (where)
  * Find the first names of people with a last name of “Matthews” (where, select)
  * Find the three people who were entered most recently (order, limit)
  * Find the number of people who have each last name (group)
  * Find the last time at which a person with each last name was created (group, max)
  * OPTIONAL: Find the most common first name for people with the last name of “Smith” (group, where)
  * Find all email addresses, and show their owners’ names with them (join)
  * Find all people, and include all of their email addresses if they have them (left join)
  * Find all people with no e-mail addresses (left join, check for null)
  * [List of clauses](sql_clauses.md)
* ActiveRecord
  * [Starting point](person.rb)
  * Create a person model
  * Implement some of the queries above
  * Inserting
  * Updating

### Homework

* [Query a Database](homework.md)
* [Database file](homework.sqlite3)
