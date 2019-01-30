class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = {}
  end

  def add_item (title, price, quantity = 1)
    quantity.times do
      items[]
    end
    self.total += price*quantity
  end

  def apply_discount
end
