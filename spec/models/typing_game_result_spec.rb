require 'rails_helper'

RSpec.describe TypingGameResult, type: :model do
  describe 'バリデーションチェック' do
    let!(:game_list) { create(:game_list) }
    let!(:user) { create(:user) }

    it '設定した全てのバリデーションが機能しているか' do
      typing_game_result = game_list.typing_game_results.new(type_speed: 100, miss_type: 5, score: 95, user_id: user.id)
      expect(typing_game_result).to be_valid
      expect(typing_game_result.errors).to be_empty
    end

    it 'type_speedがない場合にバリデーションが機能してinvalidになるか' do
      typing_game_result = game_list.typing_game_results.new(type_speed: nil, miss_type: 5, score: 95, user_id: user.id)
      expect(typing_game_result).to be_invalid
      expect(typing_game_result.errors.messages[:type_speed]).to eq(["can't be blank"])
    end

    it 'miss_typeがない場合にバリデーションが機能してinvalidになるか' do
      typing_game_result = game_list.typing_game_results.new(type_speed: 100, miss_type: nil, score: 95,
                                                             user_id: user.id)
      expect(typing_game_result).to be_invalid
      expect(typing_game_result.errors.messages[:miss_type]).to eq(["can't be blank"])
    end

    it 'scoreがない場合にバリデーションが機能してinvalidになるか' do
      typing_game_result = game_list.typing_game_results.new(type_speed: 100, miss_type: 5, score: nil,
                                                             user_id: user.id)
      expect(typing_game_result).to be_invalid
      expect(typing_game_result.errors.messages[:score]).to eq(["can't be blank"])
    end

    it 'user_idがない場合にバリデーションが機能してinvalidになるか' do
      typing_game_result = game_list.typing_game_results.new(type_speed: 100, miss_type: 5, score: 95, user_id: nil)
      expect(typing_game_result).to be_invalid
      expect(typing_game_result.errors.messages[:user_id]).to eq(["can't be blank"])
    end

    it 'game_list_idがない場合にバリデーションが機能してinvalidになるか' do
      typing_game_result = user.typing_game_results.new(type_speed: 100, miss_type: 5, score: 95, game_list_id: nil)
      expect(typing_game_result).to be_invalid
      expect(typing_game_result.errors.messages[:game_list_id]).to eq(["can't be blank"])
    end
  end
end
