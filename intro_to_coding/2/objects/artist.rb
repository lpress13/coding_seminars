require './album.rb'

class Artist
  def initialize(name:)
    @name = name
    @albums = []
  end

  def name
    @name
  end

  def albums
    @albums
  end

  def add_album(a)
    @albums << a
  end
end
