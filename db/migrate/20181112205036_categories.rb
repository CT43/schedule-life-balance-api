class Categories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :user_id
      t.integer :schedule_id

      t.timestamps
    end
  end
end
