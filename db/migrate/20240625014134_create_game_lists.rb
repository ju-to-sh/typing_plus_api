class CreateGameLists < ActiveRecord::Migration[7.1]
  def change
    create_table :game_lists do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.integer :game_type, null: false, default: 0
      t.integer :level, null: false
      t.integer :category, null: false, default: 0

      t.timestamps
    end
  end
end
