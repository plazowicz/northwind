class Supplier < ActiveRecord::Base
  attr_accessible :Address, :City, :CompanyName, :ContactName, :ContactTitle, :Country, :Fax, :HomePage, :Phone, :PostalCode, :Region, :SupplierID

  has_many :products, foreign_key: "SupplierID"
			
	before_validation :incrementID

	def incrementID
		self.SupplierID = Supplier.maximum("SupplierID") + 1
	end

end
