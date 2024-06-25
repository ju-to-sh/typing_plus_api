class Quiz < ApplicationRecord
  belongs_to :game_list
  has_many :quiz_choices, dependent: :destroy
  validates :content, presence: true
end
