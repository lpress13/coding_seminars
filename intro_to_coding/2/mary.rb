guess = []
guess_count = 0
random_number = (0..100).to_a.sample

def includes (a,b)
  a.include? (b)
end

def lowest (a,b,c)
  b > a[-1] && a[-1] > c
end

def highest (a, b, c)
  b < a[-1] && a[-1] < c
end

puts "The random number is #{random_number}."

puts "Enter a number between 1 and 100."
entered = gets.chomp.to_i
is_includes = includes(guess, entered)
is_lower = false
is_higher = false
guess << entered
guess_count += 1


while entered != random_number && guess_count < 5 do
    if is_includes == true
      puts "You've already guessed that. Try again."
    elsif is_lower == true
      puts "I said lower, and I meant it. Try again."
    elsif is_higher == true
      puts "I said higher, and I meant it. Try again."
    elsif entered > random_number
      puts "I'm thinking of a lower number. Try again."
    elsif entered < random_number
      puts "I'm thinking of a higher number. Try again."
    end
    entered = gets.chomp.to_i
    is_includes = includes(guess, entered)
    is_lower = lowest(guess, entered, random_number)
    is_higher = highest(guess, entered, random_number)
    guess << entered
    guess_count += 1
end

if entered == random_number
  puts "You got it right!"
else
  puts "Game over. You lose."
end
