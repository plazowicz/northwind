class OrderDetail < ActiveRecord::Base
	set_primary_keys :OrderID, :ProductID
  attr_accessible :Discount, :Quantity, :UnitPrice

  belongs_to :order, foreign_key: "OrderID"
  belongs_to :product, foreign_key: "ProductID" 

	def self.new_order(order_id, product_id)
			ActiveRecord::Base.transaction do
				od = OrderDetail.new
				od.product = Product.find(product_id)
				od,order = Order.find(order_id)
				od.save
			end
	end
end
