class ChangeColumnToEvents < ActiveRecord::Migration[5.1]
  def up
    change_column_null :events, :image, true
  end

  def down
    change_column_null :events, :image, false
  end
end
