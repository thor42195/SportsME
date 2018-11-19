class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
    change_column_default :organizers, :name, from:"", to:"No Name"
    change_column_default :organizers, :introduction, from:"", to:"No Introduction"
  end
end
