class Store < ActiveRecord::Base
  attr_accessible :owner

	has_many :products

end
