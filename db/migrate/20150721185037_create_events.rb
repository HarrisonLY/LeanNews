class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.string :country
      t.string :state
      t.string :city
      t.string :link
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :price
      t.text :who

      t.timestamps null: false
    end
  end
end
