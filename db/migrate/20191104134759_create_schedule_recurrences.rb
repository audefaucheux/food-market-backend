class CreateScheduleRecurrences < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_recurrences do |t|
      t.string :weekday
      t.string :from_time
      t.string :to_time
      t.references :market, null: false, foreign_key: true
      t.references :food_truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
