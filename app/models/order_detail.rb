class OrderDetail < ActiveRecord::Base
  attr_accessible :Discount, :Quantity, :UnitPrice

  belongs_to :order, foreign_key: "OrderID"
  belongs_to :product, foreign_key: "ProductID" 


end
