class AddUniqueIndexToLikes < ActiveRecord::Migration[7.1]
  def change
    add_index :likes, [:user_id, :game_list_id], unique: true
  end
end
