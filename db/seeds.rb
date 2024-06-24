require_relative './data/data'
# ユーザー作成
10.times do |n|
  FactoryBot.create(:user)
end

# クイズ問題作成
questions.each do |question|
  FactoryBot.create(:quiz, content: question)
end

# クイズ問題の選択肢作成
question_choices.each do |choice|
  FactoryBot.create(:quiz_choice, choice)
end
