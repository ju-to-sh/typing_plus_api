class QuizChoice < ApplicationRecord
  belongs_to :quiz
  has_many :quiz_answers
  with_options presence: true do
    validates :quiz_id
    validates :content
  end
  validates :is_correct, inclusion: { in: [true, false] }
end
