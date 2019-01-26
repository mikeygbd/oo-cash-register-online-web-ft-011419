require 'pry'
class CashRegister
  attr_accessor :total
  attr_reader :items, :discount

  def initialize(discount = 0)
      @items = []
      @total = 0
      @discount = discount
  end


  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      items << item
    end
    @last_transaction = price * quantity

  end

  def apply_discount
  if discount > 0
  @total = @total - (@total * @discount/100)
  "After the discount, the total comes to $#{@total}."
else
  "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @last_transaction > 0
      @total = @total - @last_transaction
    end
  end
end
