class Customer < ActiveRecord::Base
  attr_accessible :Address, :City, :CompanyName, :ContactName, :ContactTitle, :Country, :Fax, :Phone, :PostalCode, :Region
end
