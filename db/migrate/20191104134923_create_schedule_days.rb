class CreateScheduleDays < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_days do |t|
      t.date :date
      t.string :from_time
      t.string :to_time
      t.boolean :available
      t.references :market, null: false, foreign_key: true
      t.references :food_truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
