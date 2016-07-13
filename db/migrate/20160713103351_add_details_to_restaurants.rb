class AddDetailsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :account, :string
    add_column :restaurants, :pass, :string
  end
end
