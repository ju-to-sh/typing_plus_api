class QuizAnswer < ApplicationRecord
  belongs_to :quiz_choice
  belongs_to :user
end
