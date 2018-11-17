class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, null: false, default: '', limit: 100
    add_column :users, :introduction, :text, limit: 500
    add_column :users, :sex, :integer, null: false, default: 0
    add_column :users, :icon, :text
    add_column :users, :sport, :string
  end
end
