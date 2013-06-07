# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130606210316) do

  create_table "categories", :id => false, :force => true do |t|
    t.integer "CategoryID",   :limit => 2,  :null => false
    t.string  "CategoryName", :limit => 15
    t.text    "Description"
    t.binary  "Picture"
  end

  create_table "customercustomerdemo", :id => false, :force => true do |t|
    t.string "CustomerID",     :limit => nil, :null => false
    t.string "CustomerTypeID", :limit => nil, :null => false
  end

  create_table "customerdemographics", :id => false, :force => true do |t|
    t.string "CustomerTypeID", :limit => nil, :null => false
    t.text   "CustomerDesc"
  end

  create_table "customers", :id => false, :force => true do |t|
    t.string "CustomerID",   :limit => nil, :null => false
    t.string "CompanyName",  :limit => 40
    t.string "ContactName",  :limit => 30
    t.string "ContactTitle", :limit => 30
    t.string "Address",      :limit => 60
    t.string "City",         :limit => 15
    t.string "Region",       :limit => 15
    t.string "PostalCode",   :limit => 10
    t.string "Country",      :limit => 15
    t.string "Phone",        :limit => 24
    t.string "Fax",          :limit => 24
  end

  create_table "employees", :id => false, :force => true do |t|
    t.integer "EmployeeID",      :limit => 2,  :null => false
    t.string  "LastName",        :limit => 20
    t.string  "FirstName",       :limit => 10
    t.string  "Title",           :limit => 30
    t.string  "TitleOfCourtesy", :limit => 25
    t.date    "BirthDate"
    t.date    "HireDate"
    t.string  "Address",         :limit => 60
    t.string  "City",            :limit => 15
    t.string  "Region",          :limit => 15
    t.string  "PostalCode",      :limit => 10
    t.string  "Country",         :limit => 15
    t.string  "HomePhone",       :limit => 24
    t.string  "Extension",       :limit => 4
    t.binary  "Photo"
    t.text    "Notes"
    t.integer "ReportsTo",       :limit => 2
    t.string  "PhotoPath"
  end

  create_table "employeeterritories", :id => false, :force => true do |t|
    t.integer "EmployeeID",  :limit => 2,  :null => false
    t.string  "TerritoryID", :limit => 20, :null => false
  end

  create_table "order_details", :id => false, :force => true do |t|
    t.integer "OrderID",   :limit => 2, :null => false
    t.integer "ProductID", :limit => 2, :null => false
    t.float   "UnitPrice"
    t.integer "Quantity",  :limit => 2
    t.float   "Discount"
  end

  create_table "orders", :id => false, :force => true do |t|
    t.integer "OrderID",        :limit => 2,   :null => false
    t.string  "CustomerID",     :limit => nil
    t.integer "EmployeeID",     :limit => 2
    t.date    "OrderDate"
    t.date    "RequiredDate"
    t.date    "ShippedDate"
    t.integer "ShipVia",        :limit => 2
    t.float   "Freight"
    t.string  "ShipName",       :limit => 40
    t.string  "ShipAddress",    :limit => 60
    t.string  "ShipCity",       :limit => 15
    t.string  "ShipRegion",     :limit => 15
    t.string  "ShipPostalCode", :limit => 10
    t.string  "ShipCountry",    :limit => 15
  end

  create_table "products", :id => false, :force => true do |t|
    t.integer "ProductID",       :limit => 2,  :null => false
    t.string  "ProductName",     :limit => 40
    t.integer "SupplierID",      :limit => 2
    t.integer "CategoryID",      :limit => 2
    t.string  "QuantityPerUnit", :limit => 20
    t.float   "UnitPrice"
    t.integer "UnitsInStock",    :limit => 2
    t.integer "UnitsOnOrder",    :limit => 2
    t.integer "ReorderLevel",    :limit => 2
    t.integer "Discontinued"
    t.integer "store_id"
  end

  create_table "region", :id => false, :force => true do |t|
    t.integer "RegionID",          :limit => 2,   :null => false
    t.string  "RegionDescription", :limit => nil
  end

  create_table "searches", :force => true do |t|
    t.integer  "category_id"
    t.decimal  "minimum_price"
    t.decimal  "maximum_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "shippers", :id => false, :force => true do |t|
    t.integer "ShipperID",   :limit => 2,  :null => false
    t.string  "CompanyName", :limit => 40
    t.string  "Phone",       :limit => 24
  end

  create_table "shippers_tmp", :id => false, :force => true do |t|
    t.integer "ShipperID",   :limit => 2,  :null => false
    t.string  "CompanyName", :limit => 40
    t.string  "Phone",       :limit => 24
  end

  create_table "stores", :force => true do |t|
    t.string   "owner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :id => false, :force => true do |t|
    t.integer "SupplierID",   :limit => 2,  :null => false
    t.string  "CompanyName",  :limit => 40
    t.string  "ContactName",  :limit => 30
    t.string  "ContactTitle", :limit => 30
    t.string  "Address",      :limit => 60
    t.string  "City",         :limit => 15
    t.string  "Region",       :limit => 15
    t.string  "PostalCode",   :limit => 10
    t.string  "Country",      :limit => 15
    t.string  "Phone",        :limit => 24
    t.string  "Fax",          :limit => 24
    t.text    "HomePage"
  end

  create_table "territories", :id => false, :force => true do |t|
    t.string  "TerritoryID",          :limit => 20,  :null => false
    t.string  "TerritoryDescription", :limit => nil
    t.integer "RegionID",             :limit => 2
  end

  create_table "usstates", :id => false, :force => true do |t|
    t.integer "StateID",     :limit => 2
    t.string  "StateName",   :limit => 100
    t.string  "StateAbbr",   :limit => 2
    t.string  "StateRegion", :limit => 50
  end

end
