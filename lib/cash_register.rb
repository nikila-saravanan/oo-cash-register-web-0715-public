# Write your code here.
require 'pry'

class CashRegister

  attr_accessor(:total,:discount)

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity=1)
    @title = title
    @price = price
    @quantity = quantity
    @total += (@price * @quantity)
    quantity.times do 
      @items << @title
    end
  end

  def apply_discount
    if discount != 0
      @total -= (((@discount/100.0)*@total)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

end