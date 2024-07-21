require 'rails_helper'

RSpec.describe TypingGame, type: :model do
  describe 'バリデーションチェック' do
    let!(:game_list) { create(:game_list) }

    it '設定した全てのバリデーションが機能しているか' do
      typing_game = game_list.typing_games.new(content: 'タイピング問題1')
      expect(typing_game).to be_valid
      expect(typing_game.errors).to be_empty
    end

    it 'contentがない場合にバリデーションが機能してinvalidになるか' do
      typing_game = game_list.typing_games.new(content: '')
      expect(typing_game).to be_invalid
      expect(typing_game.errors.messages[:content]).to eq(["can't be blank"])
    end
  end
end
