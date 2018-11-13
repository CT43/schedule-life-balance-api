class ChangeColumnTimes < ActiveRecord::Migration[5.2]
  def self.up
    change_column :activities, :start_time, :string
    change_column :activities, :end_time, :string
  end

  def self.down
    change_column :schedules, :start_time, :time
    change_column :schedules, :end_time, :time
  end
end
