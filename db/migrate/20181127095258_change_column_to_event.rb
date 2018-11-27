class ChangeColumnToEvent < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :starttime, :time
    change_column :events, :endtime, :time
    change_column :events, :deadline, :time
  end
end
