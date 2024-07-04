class TypingGame < ApplicationRecord
  belongs_to :game_list
  validates :content, presence: true
end
