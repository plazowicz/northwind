class Product < ActiveRecord::Base
  attr_accessible :Discontinued, :ProductName, :QuantityPerUnit, :ReorderLevel, :UnitPrice, :UnitsInStock, :UnitsOnOrder

  belongs_to :supplier, foreign_key: "SupplierID"
  belongs_to :category, foreign_key: "CategoryID"

  has_many :order_details, foreign_key: "ProductID"
  has_many :orders, through: :order_details
	
	def self.make_an_order(product_id, amount)
	  product = Product.find(product_id)
		product.update_attributes!(:UnitsInStock => -amount)
		product.update_attributes!(:UnitsOnOrder => amount)
	end
end
