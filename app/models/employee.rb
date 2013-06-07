class Employee < ActiveRecord::Base

  attr_accessible :Address, :BirthDate, :City, :Country, :Extension, :FirstName, :HireDate, :HomePhone, :LastName, :Notes, :Photo, :PhotoPath, :PostalCode, :Region, :Title, :TitleOfCourtesy

  has_many :orders, foreign_key: "EmployeeID"

  belongs_to :supervisor, class_name: "Employee", foreign_key: "ReportsTo"

  has_many :subordinates, class_name: "Employee", foreign_key: "ReportsTo"

  has_and_belongs_to_many :territories, join_table: :employeeterritories, foreign_key: "EmployeeID", association_foreign_key: "TerritoryID"
	
	before_validation :incrementID


	def incrementID
		self.EmployeeID = Employee.maximum("EmployeeID") + 1
	end

end
