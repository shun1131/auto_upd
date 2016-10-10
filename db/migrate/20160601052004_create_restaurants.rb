class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :new_information
      t.integer :feature
      t.string :feature_contents
      t.integer :feature_flag
      t.integer :vacancy
      t.string :vacancy_state
      t.integer :running
      t.string :memo

      t.timestamps null: false
    end
  end
end
