class CreateChatmessages < ActiveRecord::Migration[5.1]

  def change
    create_table :chatmessages do |t|
      t.text :body
      t.references :chatuser, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :read, null: false, default: false

      t.timestamps null: false
    end
  end
end
