class ModifyColumnToOrganizer < ActiveRecord::Migration[5.1]
  def up
    change_column :organizers, :group, :string, null:false,default: ""
  end

  def down
    change_column :organizers, :group, :string, null:false, default: "0"
  end
end
