FactoryBot.define do
  factory :game_list do
    title { 'Ruby基礎' }
    content { 'Rubyに関する基礎問題' }
    game_type { 0 }
    level { 1 }
    category { 0 }
  end
end
