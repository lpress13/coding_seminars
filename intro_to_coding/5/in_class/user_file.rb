require 'csv'

class UserFile
  def initialize(filename)
    @rows = []
    CSV.foreach(filename, headers: true) do |row|
      @rows = UserRow.new(row)
    end
  end

  def invalid_rows
    @rows.reject {|r| r.valid?}
  end
end

class UserRow
  SPECIAL_CHARACTERS = "!#$%&'*+-/=?^_`{|}~"

  def initialize(row)
    @row = row
  end

  def valid_email?
    @row[:email].match(/^((\w+\.{0,1}\w+)+|([\w#{SPECIAL_CHARACTERS}]+))@\w([\-\w]|(\w\.\w))*\.\w+$/)
  end

  def valid?
    valid_email? && valid_phone? && valid_date?
  end
end

UserRow.new({email: 'mason@bob'}).valid_email?
