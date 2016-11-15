puts "Hello there."

names = []
counter = 0

while names.last != "" do
  puts "Please enter your name:"
  new_name = gets.chomp
  names << new_name
  if new_name.downcase[0..3] == "adam"
    counter += 1
  end
end

puts "There are #{ counter } Adams in the room"
