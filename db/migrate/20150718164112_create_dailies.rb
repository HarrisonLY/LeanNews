class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
