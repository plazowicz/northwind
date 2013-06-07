class Category < ActiveRecord::Base
  attr_accessible :CategoryName, :Description, :Picture, :CategorID

  has_many :products, foreign_key: "CategoryID"

	before_validation :incrementID


	def incrementID
		self.CategoryID = Category.maximum("CategoryID") + 1
	end
  
end
