class CashRegister
  attr_accessor :total, :discount, :items, :last_item_name, :last_item_price

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_name = ""
    @last_item_price = 0;
  end

  def add_item (title, price, quantity = 1)
    quantity.times do
      self.items[] << title
    end
    self.total += price*quantity
    self.last_item_name = title
    self.last_item_price = price
  end

  def apply_discount
  end
end
