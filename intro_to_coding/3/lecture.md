# Intro to Coding: Lecture 3

### Goals

* Reinforce object oriented programming
* Understand remote repositories in git
* Understand the process of TDD

### Lecture

* Homework Review: [Mason's solution](mason.rb)
  * Show `attr_reader`
  * Show `attr_writer`
  * Show `.reduce()` (and talk about the other enumerable methods)

**This is currently written as two different lessons.  The first does a deep dive into objects and we start work on the HW in class:**

* Deep dive: Everything in Ruby is an Object
  * Math as methods
  * Monkey patching
  * Exceptions
* Start work on Currency Converter
  * Create a repo, push it up to Github
  * Forking, `git clone`
  * Gems (minitest)
  * TDD

**The second assumes we've had enough of objects and goes straight into regular expressions:**

* Problem: Given a block of text, find all phone numbers and e-mail addresses in it
  * Regular expressions (Rubular)
  * Example: Did the user just type in a number?
  * `\d`
  * `*`, `+`
  * `\A`, `\z` OR `^`, `$`
  * Example: Does a string contain a person's name?
  * `\w`
  * `\s`
  * `\W`, `\D`, `\S`
  * Example: Does a string store an IP address?
  * `()`
  * `[]`
  * `|`
  * `{1, 3}`
  * `.`
  * Literals
* Finally: Does a string contain a phone number?
  * Create a repo, push it up to Github
  * Forking, `git clone`
  * Gems (minitest)
  * TDD

### Homework

Path 1: [Currency Converter](homework.md)

Path 2: ??
