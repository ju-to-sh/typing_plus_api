require 'rails_helper'
require 'support/login_macros'
require 'support/convert_value_macros'

RSpec.describe 'QuizResultAPI', type: :request do
  include LoginMacros
  include ConvertValueMacros

  let!(:game_list) { create(:game_list, game_type: 1) }
  let!(:user) { create(:user) }
  let!(:quizzes) { create_list(:quiz, 5, game_list: game_list) }
  let(:valid_attributes) { { quiz_result: [{quiz_id: quizzes[0].id, select_answer: 0}, {quiz_id: quizzes[1].id, select_answer: 0}, {quiz_id: quizzes[2].id, select_answer: 0}, {quiz_id: quizzes[3].id, select_answer: 0}, {quiz_id: quizzes[4].id, select_answer: 0}] } }
  let(:access_token) { ApiKey.find_by(user_id: user.id).access_token }
  let(:headers) { { 'Authorization' => "Bearer #{access_token}" } }

  describe 'GET /api/v1/quiz_results/:id' do
    context 'ユーザーがログインしている場合' do
      before do
        login(user)
        post api_v1_quiz_results_path, params: valid_attributes, headers: headers
      end

      it '特定のユーザーのクイズ結果を取得する' do
        get api_v1_quiz_result_path(id: game_list.id), headers: headers

        expect(response.status).to eq(200)
        json.each_with_index  do |data, index|
          expect(data["user_id"]).to eq(user.id)
          expect(data["quiz_id"]).to eq(quizzes[index].id)
          expect(data["select_answer"]).to eq(0)
        end
      end
    end
  end

  describe 'POST /api/v1/quiz_results' do
    context 'ユーザーがログインしている場合' do
      before do
        login(user)
      end

      it 'クイズ問題の結果を登録する' do
        post api_v1_quiz_results_path, params: valid_attributes, headers: headers

        expect(response).to have_http_status(:created)
        expect(json['message']).to eq('Quiz results saved successfully')
      end
    end

    context 'ユーザーがログインしていない場合' do
      it 'クイズ結果をセッションストレージに保存する' do
        post api_v1_quiz_results_path, params: valid_attributes

        convert_session = session[:quiz_results].first.map { |element| convert_values_to_integers(element.to_h) }
        convert_valid_attributes = valid_attributes[:quiz_result].map { |element| element.stringify_keys }

        expect(response).to have_http_status(:ok)
        expect(convert_session).to include(convert_valid_attributes.first)
      end
    end
  end

  def json
    JSON.parse(response.body)
  end
end
