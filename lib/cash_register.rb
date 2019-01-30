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
      self.items[] << title
    end
    self.total += price*quantity
    self.last_item[]
  end

  def apply_discount
end
