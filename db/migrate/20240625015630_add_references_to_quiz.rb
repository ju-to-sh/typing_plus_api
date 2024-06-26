class AddReferencesToQuiz < ActiveRecord::Migration[7.1]
  def change
    add_reference :quizzes, :game_list, foreign_key: true
  end
end
