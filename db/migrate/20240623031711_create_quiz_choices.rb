class CreateQuizChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_choices do |t|
      t.string :content
      t.boolean :is_correct
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
