class DeleteColumnFromReaction < ActiveRecord::Migration[5.1]
  def change
    drop_table :reactions
  end
end
