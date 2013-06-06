class CustomerDemographic < ActiveRecord::Base

  set_table_name 'customerdemographics'

  attr_accessible :CustomerDesc

  has_and_belongs_to_many :customers, join_table: :customercustomerdemo, foreign_key: "CustomerTypeID", association_foreign_key: "CustomerID"
end
