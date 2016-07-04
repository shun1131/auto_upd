class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :restaurant_id
      t.string :new_information
      t.string :feature
      t.string :vacancy
      t.string :propriety

      t.timestamps null: false
    end
  end
end
