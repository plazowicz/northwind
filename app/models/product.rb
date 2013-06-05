class Product < ActiveRecord::Base
  attr_accessible :Discontinued, :ProductName, :QuantityPerUnit, :ReorderLevel, :UnitPrice, :UnitsInStock, :UnitsOnOrder
end
