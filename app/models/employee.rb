class Employee < ActiveRecord::Base
	set_table_name "employees"

  attr_accessible :Address, :Birthdate, :City, :Country, :Extension, :FirstName, :Hiredate, :HomePhone, :LastName, :Notes, :Photo, :PhotoPath, :PostalCode, :Region, :Title, :TitleOfCourtesy, :EmployeeID

  has_many :orders, foreign_key: "EmployeeID"

  belongs_to :supervisor, class_name: "Employee", foreign_key: "ReportsTo"

  has_many :subordinates, class_name: "Employee", foreign_key: "ReportsTo"

  has_and_belongs_to_many :territories, join_table: :employeeterritories, foreign_key: "EmployeeID", association_foreign_key: "TerritoryID"
	
	before_validation :incrementID


	def incrementID
		self.EmployeeID = Employee.maximum("EmployeeID") + 1
	end

end
