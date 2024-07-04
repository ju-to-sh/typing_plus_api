class CreateTypingGames < ActiveRecord::Migration[7.1]
  def change
    create_table :typing_games do |t|
      t.string :content
      t.references :game_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
