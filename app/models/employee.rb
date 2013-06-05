class Employee < ActiveRecord::Base
  attr_accessible :Address, :Birthdate, :City, :Country, :Extension, :FirstName, :Hiredate, :HomePhone, :LastName, :Notes, :Photo, :PhotoPath, :PostalCode, :Region, :Title, :TitleOfCourtesy
end
