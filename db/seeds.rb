require_relative './data/data'
# ユーザー作成
10.times do |n|
  FactoryBot.create(:user)
end

# ゲームリスト作成
game_lists.each do |list|
  FactoryBot.create(:game_list, list)
end

# クイズ問題作成
questions.each do |question|
  FactoryBot.create(:quiz, question)
end

# クイズ問題の選択肢作成
question_choices.each do |choice|
  FactoryBot.create(:quiz_choice, choice)
end

# タイピング問題作成
typing_questions.each do |typing|
  FactoryBot.create(:typing_game, typing)
end
