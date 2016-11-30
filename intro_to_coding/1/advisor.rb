def get_value(card)
  cards = {"J" => 10, "Q" => 10, "K" => 10, "A" => 11}
  cards[card] || card.to_i
end

def find_total(a, b)
  get_value(a) + get_value(b)
end

def find_softness(c1, c2)
  c1 == 'A' || c2 == 'A'
end

puts 'Enter card 1'
c1 = gets.chomp

puts 'Enter card 2'
c2 = gets.chomp

puts 'Enter dealer card'
dealer_card = get_value(gets.chomp)

total = find_total(c1, c2)
is_soft = find_softness(c1, c2)

best_moves = { 5 => {2 => 'Hit Me', 3 => 'Hit!!'},
               6 => {2 => 'Hit Now', 3 => 'Hit hit hit'} }

puts "You should #{best_moves[total][dealer_card]}"
