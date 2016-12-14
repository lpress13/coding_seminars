require './artist.rb'

paul = Artist.new(name: 'The Paultones')
puts paul.name

p paul.albums

throat_singing = Album.new(name: 'TS', price: 79.95, stock: 50)
nineteen = Album.new(name: '1989', stock: 20, price: 13)

paul.add_album(throat_singing)
paul.add_album(nineteen)

p paul.albums
