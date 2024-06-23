class Quiz < ApplicationRecord
  has_many :quiz_choices, dependent: :destroy
end
