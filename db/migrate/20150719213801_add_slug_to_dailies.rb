class AddSlugToDailies < ActiveRecord::Migration
  def change
    add_column :dailies, :slug, :string
  end
end
