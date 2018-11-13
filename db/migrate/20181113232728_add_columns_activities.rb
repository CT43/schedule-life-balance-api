class AddColumnsActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :start_time_min, :integer
    add_column :activities, :end_time_min, :integer
    add_column :activities, :description, :text
    add_column :activities, :duration_min, :integer
  end
end
