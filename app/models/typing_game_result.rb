class TypingGameResult < ApplicationRecord
  belongs_to :game_list
  belongs_to :user

  with_options presence: true do
    validates :type_speed
    validates :miss_type
    validates :score
    validates :game_list_id
    validates :user_id
  end
end
