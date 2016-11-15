def average(array_of_hashes, key)
  total = 0
  count = 0
  array_of_hashes.each do |hash|
    total += hash[key]
    count += 1
  end
  total.to_f / count
end

puts average([{"Number" => 23, "Potato" => 26}, {"Number" => 43}], "Number")
