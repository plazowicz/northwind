class Region < ActiveRecord::Base
  attr_accessible :RegionDescription

  has_many :territories, foreign_key: "RegionID"
  
end
