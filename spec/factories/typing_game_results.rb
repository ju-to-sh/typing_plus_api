FactoryBot.define do
  factory :typing_game_result do
    type_speed { 1 }
    miss_type { 1 }
    score { 1 }
    gamelist { nil }
  end
end
