class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :postcode
      t.string :town
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
