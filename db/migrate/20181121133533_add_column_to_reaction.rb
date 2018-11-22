class AddColumnToReaction < ActiveRecord::Migration[5.1]
  def change
    add_index :reactions, [:follower_id, :following_id], unique: true
  end
end
