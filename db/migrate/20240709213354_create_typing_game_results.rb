class CreateTypingGameResults < ActiveRecord::Migration[7.1]
  def change
    create_table :typing_game_results do |t|
      t.integer :type_speed, null: false
      t.integer :miss_type, null: false
      t.integer :score, null: false
      t.references :game_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
