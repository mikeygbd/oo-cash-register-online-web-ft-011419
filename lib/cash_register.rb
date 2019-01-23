require 'pry'
class CashRegister
  attr_accessor :total, :discount, :quantity, :items, :last_transaction


  def initialize(discount = 0)
    @items = []

      @total = 0
      self.discount = discount
  end


  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << item
    end
    self.last_transaction = price * quantity

  end

  def apply_discount
    if discount > 0
  n = self.discount * 10
  @total = @total - n
  "After the discount, the total comes to $#{@total}."
elsif discount <= 0
  "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0
  end
end
