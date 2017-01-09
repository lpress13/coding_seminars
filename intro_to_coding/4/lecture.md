# Intro to Coding: Lecture 4

### Goals

* Be able to use regular expressions

### Lecture

* Homework Review: []()

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
* Problem: Given a CSV file, find all phone numbers in it
  * What a CSV file is
  * `arrary_of_arrays = CSV.read` or `CSV.foreach`
  * `foreach(..., headers: true)`
  * `.match`
  * `.scan`
  * `.sub`
  * `.gsub`

### Homework

[User Validator](homework.md)