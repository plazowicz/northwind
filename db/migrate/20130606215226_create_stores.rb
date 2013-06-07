class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :owner
      t.timestamps
    end
  end
end
