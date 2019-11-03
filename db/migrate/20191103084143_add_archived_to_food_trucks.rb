class AddArchivedToFoodTrucks < ActiveRecord::Migration[6.0]
  def change
    add_column :food_trucks, :archived, :boolean, default: false
  end
end
