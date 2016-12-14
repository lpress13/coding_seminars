class Album
  def initialize(name:, price:, stock:)
    @name = name
    @price = price
    @stock = stock
  end

  def price
    @price
  end

  def number_in_stock
    @stock
  end
end
