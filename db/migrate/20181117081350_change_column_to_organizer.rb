class ChangeColumnToOrganizer < ActiveRecord::Migration[5.1]
  def change
    change_column :organizers, :group, :string, null:false
  end
end
