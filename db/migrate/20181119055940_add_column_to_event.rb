class AddColumnToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :place, :string
  end
end
