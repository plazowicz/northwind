class Order < ActiveRecord::Base
  attr_accessible :Freight, :Orderdate, :ShipAddress, :ShipCity, :ShipCountry, :ShipName, :ShipPostalCode, :ShipRegion, :Shippeddate
end
