class CreateReactions < ActiveRecord::Migration[5.1]
  def change
    drop_table :reactions
    create_table :reactions do |t|
      t.integer :follower_id
      t.integer :following_id
      t.timestamps
    end
  end
end
