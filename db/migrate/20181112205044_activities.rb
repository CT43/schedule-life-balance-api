class Activities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.float :duration
      t.integer :schedule_id
      t.integer :category

      t.timestamps
    end
  end
end
