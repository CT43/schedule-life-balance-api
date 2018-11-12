class Schedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :date
      t.float :hours
      t.integer :user_id

      t.timestamps
    end
  end
end
