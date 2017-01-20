require 'csv'

class PhoneFinder
  attr_reader :data

  def initialize(filename)
    @data = CSV.read(filename)
  end

  def get_numbers
    data.flatten.select {|s| s.match(/\d{3}-\d{3}-\d{4}/)}
  end
end
