require 'rails_helper'

RSpec.describe QuizAnswer, type: :model do
  describe 'リレーションのチェック' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(QuizAnswer.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'quiz_choiceモデルとの関係' do
      it 'N:1となっている' do
        expect(QuizAnswer.reflect_on_association(:quiz_choice).macro).to eq :belongs_to
      end
    end
  end
end
