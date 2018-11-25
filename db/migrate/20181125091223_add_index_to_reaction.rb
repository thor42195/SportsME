class AddIndexToReaction < ActiveRecord::Migration[5.1]
  def change
    add_index :reactions, :follower_id
    add_index :reactions, :followed_id
    add_index :reactions, [:follower_id, :followed_id], unique: true
  end
end
