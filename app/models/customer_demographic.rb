class CustomerDemographic < ActiveRecord::Base
  attr_accessible :CustomerDesc

  has_and_belongs_to_many :customer_demographics, through: :customer_customer_demo, foreign_key: "CustomerTypeID"
end
