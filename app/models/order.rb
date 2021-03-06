class Order < ActiveRecord::Base

  attr_accessible :Freight, :Orderdate, :ShipAddress, :ShipCity, :ShipCountry, :ShipName, :ShipPostalCode, :ShipRegion, :Shippeddate, :OrderID

  has_many :order_details, foreign_key: "OrderID"
  has_many  :products, through: :order_details

  belongs_to :customer, foreign_key: "CustomerID"
  belongs_to :shipper, foreign_key: "ShipperID"
  belongs_to :employee, foreign_key: "EmployeeID"

	before_validation :incrementID
	
	def incrementID
		self.OrderID = Order.maximum("OrderID") + 1
	end
end
