class Shipper < ActiveRecord::Base
  attr_accessible :CompanyName, :Phone, :ShipperID

  has_many :orders, foreign_key: "ShipperID"

	before_validation :incrementID

	def incrementID
		self.ShipperID = Shipper.maximum("ShipperID") + 1
	end

end
