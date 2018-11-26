class CreateChatusers < ActiveRecord::Migration[5.1]
  def change
    create_table :chatusers do |t|
      t.integer :sender_id
      t.integer :recipient_id

      t.timestamps
    end
    add_index :chatusers, :sender_id
    add_index :chatusers, :recipient_id
    add_index :chatusers, [:sender_id, :recipient_id], unique: true
  end
end
