class AddStoreIdToProduct < ActiveRecord::Migration
  def change
		rename_column :employees, :EmployeeID, :id
  end
end
