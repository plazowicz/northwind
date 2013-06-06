class OrderDetail < ActiveRecord::Base
	set_primary_keys :OrderID, :ProductID
  attr_accessible :Discount, :Quantity, :UnitPrice

  belongs_to :order, foreign_key: "OrderID"
  belongs_to :product, foreign_key: "ProductID" 

	def self.new_order(quantity, unit_price, discount, product_id)
			ActiveRecord::Base.transaction do
 		 	order = Order.create()
  		order_detail = OrderDetail.new(:Discount => discount, :Quantity => quantity, :UnitPrice => unit_price)
  		order_detail.ProductID = Product.find(product_id).ProductID
  		order_detail.OrderID = order.OrderID
  		order_detail.save
		end
	end
end
