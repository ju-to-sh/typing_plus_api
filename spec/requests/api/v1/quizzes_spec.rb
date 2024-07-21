require 'rails_helper'

RSpec.describe 'QuizAPI', type: :request do
  let(:game_list) { create(:game_list) }

  it '特定のquizを取得する' do
    quiz = game_list.quizzes.create(content: '問題内容')

    get api_v1_quiz_path(game_list.id)
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    json['data'].each do |quiz|
      expect(quiz['attributes']['content']).to eq('問題内容')
    end
  end
end
