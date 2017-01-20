require 'minitest/autorun'
require 'minitest/pride'
require './phone_finder.rb'

class PhoneFinderTest < Minitest::Test
  def test_initialize
    assert PhoneFinder.new('simple.csv')
  end

  def test_simple
    finder = PhoneFinder.new('simple.csv')
    assert_equal ['919-302-5139', '919-555-1111'], finder.get_numbers
  end
end
