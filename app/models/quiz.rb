class Quiz < ApplicationRecord
  has_many :quiz_choices, dependent: :destroy
  validates :content, presence: true
end
