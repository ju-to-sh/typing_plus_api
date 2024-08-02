require 'rails_helper'

RSpec.describe QuizChoice, type: :model do
  describe 'バリデーションチェック' do
    let!(:game_list) { create(:game_list) }
    let(:quiz) { game_list.quizzes.create(content: '問題1') }

    it '設定した全てのバリデーションが機能しているか' do
      quiz_choice = quiz.quiz_choices.new(content: '問題1の選択肢', is_correct: false)
      expect(quiz_choice).to be_valid
      expect(quiz_choice.errors).to be_empty
    end

    it 'contentがない場合にバリデーションが機能してinvalidになるか' do
      quiz_choice = quiz.quiz_choices.new(content: '', is_correct: false)
      expect(quiz_choice).to be_invalid
      expect(quiz_choice.errors.messages[:content]).to eq(["can't be blank"])
    end

    it 'is_correctがtrueもしくはfalse場合にバリデーションが機能してinvalidになるか' do
      quiz_choice = quiz.quiz_choices.new(content: '問題1の選択肢', is_correct: nil)
      expect(quiz_choice).to be_invalid
      expect(quiz_choice.errors.messages[:is_correct]).to eq(['is not included in the list'])
    end
  end
end
