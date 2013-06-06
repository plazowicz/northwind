class Territory < ActiveRecord::Base
  attr_accessible :TerritoryDescription

  has_and_belongs_to_many :employees, join_table: :employeeterritories, foreign_key: "TerritoryID", association_foreign_key: "EmployeeID"

  belongs_to :region, foreign_key: "RegionID"
end
