class Customer < ActiveRecord::Base
  attr_accessible :Address, :City, :CompanyName, :ContactName, :ContactTitle, :Country, :Fax, :Phone, :PostalCode, :Region

  has_many :orders, foreign_key: "CustomerID"

  has_and_belongs_to_many :customer_demographics, join_table: :customercustomerdemo, foreign_key: "CustomerID", association_foreign_key: "CustomerTypeID"

end
