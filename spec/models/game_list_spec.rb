require 'rails_helper'

RSpec.describe GameList, type: :model do
  describe 'バリデーションチェック' do
    it '設定した全てのバリデーションが機能しているか' do
      game_list = build(:game_list)
      expect(game_list).to be_valid
      expect(game_list.errors).to be_empty
    end
    it 'titleがない場合にバリデーションが機能してinvalidになるか' do
      game_list = build(:game_list, title: '')
      expect(game_list).to be_invalid
      expect(game_list.errors.messages[:title]).to eq(["can't be blank"])
    end

    it 'contentがない場合にバリデーションが機能してinvalidになるか' do
      game_list = build(:game_list, content: '')
      expect(game_list).to be_invalid
      expect(game_list.errors.messages[:content]).to eq(["can't be blank"])
    end

    it 'game_typeがない場合にバリデーションが機能してinvalidになるか' do
      game_list = build(:game_list, game_type: nil)
      expect(game_list).to be_invalid
      expect(game_list.errors.messages[:game_type]).to eq(["can't be blank"])
    end

    it 'levelがない場合にバリデーションが機能してinvalidになるか' do
      game_list = build(:game_list, level: nil)
      expect(game_list).to be_invalid
      expect(game_list.errors.messages[:level]).to eq(["can't be blank"])
    end

    it 'categoryがない場合にバリデーションが機能してinvalidになるか' do
      game_list = build(:game_list, category: nil)
      expect(game_list).to be_invalid
      expect(game_list.errors.messages[:category]).to eq(["can't be blank"])
    end
  end
end
