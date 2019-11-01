class CreateFoodTruckCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :food_truck_cuisines do |t|
      t.references :food_truck, null: false, foreign_key: true
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
