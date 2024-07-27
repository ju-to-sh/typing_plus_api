class GameList < ApplicationRecord
  has_many :quizzes, dependent: :destroy
  has_many :typing_games, dependent: :destroy
  has_many :typing_game_results, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :content
    validates :game_type
    validates :level
    validates :category
  end

  enum game_type: { quiz: 0, typing: 1 }
  enum category: { ruby: 0, rails: 1 }

  def self.ransackable_attributes(auth_object = nil)
    ["title", "category", "level"]
end
end
