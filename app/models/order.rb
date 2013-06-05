class Order < ActiveRecord::Base
  attr_accessible :Freight, :Orderdate, :ShipAddress, :ShipCity, :ShipCountry, :ShipName, :ShipPostalCode, :ShipRegion, :Shippeddate

  has_many :order_details, foreign_key: "OrderID"
  has_many  :products, through: :order_details

  belongs_to :customer, foreign_key: "CustomerID"
  belongs_to :shipper, foreign_key: "ShipperID"
  belongs_to :employee, foreign_key: "EmployeeID"

end
