class Jobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :job_type
      t.string :slug
      t.string :country
      t.string :state
      t.string :city
      t.string :link
      t.decimal :salary
      t.text :description
      t.boolean :special, default: false

      t.timestamps null: false
    end
  end
end