class ContactParser
  def initialize(text)
    @text = text
  end

  def phone_numbers
    @text.scan(/\d{3}-\d{3}-\d{4}/)
  end

  def email_addresses
    @text.scan(/\S+@\S+\.\S+/)
  end
end
