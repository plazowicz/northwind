class Supplier < ActiveRecord::Base
  attr_accessible :Address, :City, :CompanyName, :ContactName, :ContactTitle, :Country, :Fax, :HomePage, :Phone, :PostalCode, :Region

  has_many :products, foreign_key: "SupplierID"
end
