class AddColumnToOrganizer < ActiveRecord::Migration[5.1]
  def change
    add_column :organizers, :name, :string, null: false, default: '', limit: 100
    add_column :organizers, :introduction, :string, limit: 500
    add_column :organizers, :group, :string, null: false, default: 0
    add_column :organizers, :number, :integer
    add_column :organizers, :icon, :text
    add_column :organizers, :sport, :integer
  end
end
