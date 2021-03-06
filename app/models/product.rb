class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def in_stock?
    if self.inventory > 0
      return "Available"
    else
      return "Sold Out"
    end
  end

end
