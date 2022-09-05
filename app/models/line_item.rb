class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates_presence_of :quantity
  validates_numericality_of :quantity, greater_than: 0

  def total_price
    product.price * quantity
  end

  def add_quantity
    self.quantity += 1
    save!
  end

  def remove_quantity
    if quantity <= 1
      destroy
    else
      self.quantity -= 1
      save!
    end
  end

end
