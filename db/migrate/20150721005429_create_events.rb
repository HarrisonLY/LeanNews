class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :price
      t.string :who

      t.timestamps null: false
    end
  end
end
