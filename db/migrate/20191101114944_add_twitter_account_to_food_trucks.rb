class AddTwitterAccountToFoodTrucks < ActiveRecord::Migration[6.0]
  def change
    add_column :food_trucks, :twitter_account, :string
    add_column :food_trucks, :description, :string
    add_column :food_trucks, :profile_picture, :string
  end
end
