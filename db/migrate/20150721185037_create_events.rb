class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.string :country
      t.string :state
      t.string :city
      t.string :link
      t.datetime :start
      t.datetime :end   
      t.decimal :price
      t.text :who
      t.text :extra
      t.boolean :special, default: false

      t.timestamps null: false
    end
  end
end