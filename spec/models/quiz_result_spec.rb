require 'rails_helper'

RSpec.describe QuizResult, type: :model do
  describe 'バリデーションチェック' do
    let!(:game_list) { create(:game_list) }
    let!(:user) { create(:user) }
    let!(:quiz) { game_list.quizzes.create(content: '問題1') }

    it '設定した全てのバリデーションが機能しているか' do
      quiz_result = quiz.quiz_results.new(select_answer: 2, user_id: user.id)
      expect(quiz_result).to be_valid
      expect(quiz_result.errors).to be_empty
    end

    it 'select_answertがない場合にバリデーションが機能してinvalidになるか' do
      quiz_result = quiz.quiz_results.new(select_answer: nil, user_id: user.id)
      expect(quiz_result).to be_invalid
      expect(quiz_result.errors.messages[:select_answer]).to eq(["can't be blank"])
    end
  end
end
