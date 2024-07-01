class CreateQuizAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_answers do |t|
      t.references :quiz_choice, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
