class Customer < ActiveRecord::Base
  attr_accessible :Address, :City, :CompanyName, :ContactName, :ContactTitle, :Country, :Fax, :Phone, :PostalCode, :Region

  has_many :orders, foreign_key: "CustomerID"

  has_many :customer_customer_demos, foreign_key: "CustomerID"

  has_and_belongs_to_many :customer_demographics, through: :customer_customer_demo, foreign_key: "CustomerID"

end
