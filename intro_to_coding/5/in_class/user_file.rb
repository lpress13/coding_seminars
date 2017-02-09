require 'csv'

class UserFile
  def initialize(filename)
    @rows = []
    row_number = 0
    CSV.foreach(filename, headers: true) do |row|
      @rows << UserRow.new(row, row_number)
      row_number += 1
    end
  end

  def invalid_row_numbers
    @rows.reject {|r| r.valid?}.map {|r| r.number}
  end
end

class UserRow
  attr_reader :number

  def initialize(row, number)
    @row = row
    @number = number
  end

  def valid_email?
    special = "!#$%&'*+-/=?^_`{|}~"
    @row[:email].match(/^((\w+\.{0,1}\w+)+|([\w#{special}]+))@\w([\-\w]|(\w\.\w))*\.\w+$/)
  end

  def valid_phone?
    @row[:phone].match(/^d{3}-d{3}-d{4}$/)
  end

  def valid_date?
    @row[:joined].match(/^d{2}\/d{2}\/d{4}$/)
  end

  def valid?
    valid_email? && valid_phone? && valid_date?
  end
end

UserRow.new({email: 'mason@bob'}).valid_email?
