class Region < ActiveRecord::Base

  set_table_name 'region'

  attr_accessible :RegionDescription

  has_many :territories, foreign_key: "RegionID"
  
end
