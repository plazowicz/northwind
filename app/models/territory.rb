class Territory < ActiveRecord::Base
  attr_accessible :TerritoryDescription

  has_and_belongs_to_many :territories, through: :employee_territories, foreign_key: "TerritoryID"

  belongs_to :region, foreign_key: "RegionID"
end
