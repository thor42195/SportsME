class ChangeColumnToEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :starttime, :datetime, null: false
    remove_column :events, :endtime, :datetime, null: false
    remove_column :events, :deadline, :datetime, null: false
    add_column :events, :startdate, :date
    add_column :events, :starttime, :time
    add_column :events, :enddate, :date
    add_column :events, :endtime, :time
    add_column :events, :duedate, :date
    add_column :events, :duetime, :time
  end
end
