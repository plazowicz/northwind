class Shipper < ActiveRecord::Base
  attr_accessible :CompanyName, :Phone

  has_many :orders, foreign_key: "ShipperID"
end
