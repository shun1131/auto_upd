class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :restaurant_id
      t.integer :new_information
      t.integer :feature
      t.integer :vacancy

      t.timestamps null: false
    end
  end
end
