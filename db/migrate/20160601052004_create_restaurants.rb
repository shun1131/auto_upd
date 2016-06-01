class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :new_information
      t.string :feature
      t.string :feature_contents
      t.string :feature_flag
      t.string :vacancy
      t.string :vacancy_state
      t.string :running
      t.string :memo

      t.timestamps null: false
    end
  end
end
