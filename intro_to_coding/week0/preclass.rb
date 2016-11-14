def do_stuff(big_thing, important_name)
  answer = 0
  bottom = 0
  big_thing.each do |little_thing|
    answer += little_thing[important_name]
    bottom += 1
  end
  answer.to_f / bottom
end
