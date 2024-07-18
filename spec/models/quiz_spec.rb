require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe 'バリデーションチェック' do
    let(:game_list) { create(:game_list) }

    it '設定した全てのバリデーションが機能しているか' do
      quiz = game_list.quizzes.new(content: '問題内容')
      expect(quiz).to be_valid
      expect(quiz.errors).to be_empty
    end

    it 'contentがない場合にバリデーションが機能してinvalidになるか' do
      quiz = game_list.quizzes.new(content: '')
      expect(quiz).to be_invalid
      expect(quiz.errors.messages[:content]).to eq(["can't be blank"])
    end
  end
end
