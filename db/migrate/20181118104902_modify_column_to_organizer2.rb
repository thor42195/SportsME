class ModifyColumnToOrganizer2 < ActiveRecord::Migration[5.1]
  def change
    change_column :organizers, :sport, :string
    change_column_default :organizers, :sport, from:nil, to: ""
    change_column_default :organizers, :number, from:nil, to: ""
  end
end
