class QuizResult < ApplicationRecord
  belongs_to :quiz
  belongs_to :user

  validates :select_answer, presence: true
end
