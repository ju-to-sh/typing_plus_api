class AddUserIdToTypingGameResults < ActiveRecord::Migration[7.1]
  def change
    add_reference :typing_game_results, :user, foreign_key: true
  end
end
