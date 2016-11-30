def is_number? string
  true if Float(string) rescue false
end

puts 'Hello there.'

nums = []
total = 0
count = 0

puts 'Please enter Mason\'s number:'

while nums.last != "" do
  new_num = gets.chomp
  nums << new_num
  if is_number?(new_num)
    total += Integer(new_num)
    count += 1
    puts "Please enter a number:"
  else
    puts "Please enter only an integer:"
  end
end

puts "sum = #{total}"
puts "average = #{ Float(total)/count }"
