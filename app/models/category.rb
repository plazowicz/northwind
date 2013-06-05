class Category < ActiveRecord::Base
  attr_accessible :CategoryName, :Description, :Picture

  has_many :products, foreign_key: "CategoryID"
  
end
