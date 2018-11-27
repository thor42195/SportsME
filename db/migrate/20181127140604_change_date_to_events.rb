class ChangeDateToEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :starttime, 'datetime USING CAST(starttime AS datetime)'
    change_column :events, :endtime, 'datetime USING CAST(endtime AS datetime)'
    change_column :events, :deadline, 'datetime USING CAST(deadline AS datetime)'
  end
end
