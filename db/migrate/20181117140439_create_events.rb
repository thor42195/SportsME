class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :content, null:false ,limit: 500
      t.text :image, null:false
      t.integer :number, null:false
      t.date :day, null:false
      t.datetime :starttime, null:false
      t.datetime :endtime, null:false
      t.datetime :deadline, null:false
      t.references :organizer, foreign_key: true

      t.timestamps
    end
  end
end
