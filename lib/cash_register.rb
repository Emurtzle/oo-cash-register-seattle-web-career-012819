require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_item_name, :last_item_price

  def initialize(discount=0.0)
    @total = 0.0
    @discount = discount.to_f
    @items = []
    @last_item_name = ""
    @last_item_price = 0;
  end

  def add_item (title, price, quantity = 1)
    quantity.times do
      self.items << title
    end
    self.total += price*quantity
    self.last_item_name = title
    self.last_item_price = price
  end

  def apply_discount
    #binding.pry
    if self.discount > 0
      #binding.pry
      self.total = self.total - (self.total * (self.discount/100))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total - last_item_price
  end
end
