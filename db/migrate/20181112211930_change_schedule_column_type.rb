class ChangeScheduleColumnType < ActiveRecord::Migration[5.2]
  def self.up
    change_column :schedules, :date, :date
  end

  def self.down
    change_column :schedules, :date, :datetime
  end
end
