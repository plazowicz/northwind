class Employee < ActiveRecord::Base
  attr_accessible :Address, :Birthdate, :City, :Country, :Extension, :FirstName, :Hiredate, :HomePhone, :LastName, :Notes, :Photo, :PhotoPath, :PostalCode, :Region, :Title, :TitleOfCourtesy

  has_many :orders, foreign_key: "EmployeeID"

  belongs_to :supervisor, class_name: "Employee", foreign_key: "ReportsTo"

  has_many :subordinates, class_name: "Employee", foreign_key: "ReportsTo"

  has_and_belongs_to_many :territories, through: :employee_territories, foreign_key: "EmployeeID"

end
