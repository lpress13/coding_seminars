# Number Guessing Game

## Description

Create a number guessing game in which the computer picks a number and you have to guess it.  The computer will give you cues like 'Too high' or 'Too low.'

## Objectives

After completing this assignment, you should...

* Understand what methods are and how they can be used to:
  * Reduce code repetition
  * Improve readers' ability to reason about code
* Be able to decide on combinations of hashes and arrays necessary to solve problems
* Create, add to, and check for presence in an array
* Be able to add, commit, and push to GitHub

## Deliverables

* **A Ruby file called `guessing_game.rb`.**
* **A GitHub repository.** Yep, it's true.  We haven't talked about these in class yet, but give it a shot on your own.  This will prime you for faster learning in the next lesson.  Submit a link to your GitHub repository on the homework submission form.

## Normal Mode

Your goal for this homework is to create a number guessing game. Your program should pick a random number between 1 and 100 and ask you for a guess. If your guess is less than the program's number, it should tell you that you were low and let you guess again. If the guess is greater than the program's number, it should tell you that you were high and let you guess again. If your guess is correct, the program should tell you that you win and then quit.

Other requirements:

* Your code should include at least two methods which each take at least one parameter.
* After 5 incorrect guesses, the program should tell you that you lose.
* If you guess the same number twice, the program should ask you if you're feeling all right (or something similarly sarcastic).
* The program should also comment on your behavior if you make a guess that doesn't help you.  For example, you might say "50" and then be told "that's too low."  If you then guess "25," you're just wasting a guess.
* This game should be run from the command line by typing `ruby guessing_game.rb`.

Bonus: You'll probably use the `rand` method if left to your own devices. Find a way for the computer to pick a random number without using `rand`!

## Hard Mode

Create a leaderboard.  This will involve the following:

* Feel free to increase the allowed number of guesses to 10 to make this more interesting.
* At the beginning of each game, the user is asked for his or her name.
* If the user guesses the number correctly, his or her name is added to the leaderboard alongside the number of guesses the user took to find the right number.
* After each game, the leaderboard is displayed.  The user with the fewest number of guesses is at the top.  If two users have the same number of guesses, the one who reached that score first is at the top.
* After displaying the leaderboard, the computer asks if someone would like to play again, and the program starts over.  The program doesn't actually end until the user says that no one is left to play.
* It is fine that the leaderboard is wiped out every time the program ends.  We don't yet have the tools to persist this information.

## Nightmare Mode

Write the opposite program as well: you, the user, pick a number between 1 and 100. The computer has to guess the number. You tell it whether it's too high, too low, or correct after each guess. The computer gets five guesses. The computer should also tell you if you are lying to it.  (e.g. Computer guesses 50, you say "High."  Computer then guesses 49 and you say "Low."  You'd be lying, as there are no numbers between them.)

If you do Nightmare Mode, you might want to:

* [Watch this video](https://www.youtube.com/watch?v=JQhciTuD3E8) about binary search
* [Read this article](http://en.wikipedia.org/wiki/Binary_search_algorithm) about binary search
