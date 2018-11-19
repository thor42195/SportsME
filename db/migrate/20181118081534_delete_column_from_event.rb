class DeleteColumnFromEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events,:day
  end
end
