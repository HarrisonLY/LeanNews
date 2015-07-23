class AddExtraToEvents < ActiveRecord::Migration
  def change
    add_column :events, :extra, :text
    add_column :events, :special, :boolean, default: false
  end
end
