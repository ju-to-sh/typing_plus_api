class Like < ApplicationRecord
  belongs_to :user
  belongs_to :game_list

  with_options presence: true do
    validates :user_id
    validates :game_list_id
  end
  validates :user_id, uniqueness: { scope: :game_list_id }
end
