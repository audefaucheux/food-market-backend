class AddDayNumToScheduleRecurrences < ActiveRecord::Migration[6.0]
  def change
    add_column :schedule_recurrences, :day_num, :integer
    remove_column :schedule_recurrences, :weekday
  end
end
