require 'minitest/pride'
require 'minitest/autorun'
require './contact_parser.rb'

class ContactParserTest < Minitest::Test
  def test_initialize
    assert ContactParser.new('String')
  end

  def test_dashes
    cp = ContactParser.new('919-555-5555')
    assert_equal ['919-555-5555'], cp.phone_numbers
  end

  def test_both
    cp = ContactParser.new('My name is Bob, my mobile phone number is 919-555-1112, and my e-mail address is bob@bob.com')
    assert_equal ['919-555-1112'], cp.phone_numbers
    assert_equal ['bob@bob.com'], cp.email_addresses
  end

end
