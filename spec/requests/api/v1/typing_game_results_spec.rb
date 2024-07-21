require 'rails_helper'
require 'support/login_macros'
require 'support/convert_value_macros'

RSpec.describe 'TypingGameResultAPI', type: :request do
  include LoginMacros
  include ConvertValueMacros

  let!(:game_list) { create(:game_list, game_type: 1) }
  let(:valid_attributes) { { typing_game_result: { type_speed: 200, miss_type: 5, score: 197, game_list_id: game_list.id } } }
  let!(:user) { create(:user) }
  let(:access_token) { ApiKey.find_by(user_id: user.id).access_token }
  let(:headers) { { 'Authorization' => "Bearer #{access_token}" } }

  context 'ユーザーがログインしている場合' do
    before do
      login(user)
    end

    it 'タイピング問題の結果を登録する' do
      post api_v1_typing_game_results_path, params: valid_attributes, headers: headers

      json = JSON.parse(response.body)
      expect(response).to have_http_status(:created)
      expect(json['message']).to eq('typing results saved successfully')
    end
  end

  context 'ユーザーがログインしていない場合' do
    it 'タイピング結果をセッションストレージに保存する' do
      post api_v1_typing_game_results_path, params: valid_attributes
      convert_session_info = convert_values_to_integers(session[:typing_game_results].first.to_h)

      expect(response).to have_http_status(:ok)
      expect(convert_session_info).to include(valid_attributes[:typing_game_result].stringify_keys)
    end
  end
end
