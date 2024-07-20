require 'rails_helper'

describe 'UserSessionsAPI' do
  it '新しいユーザーを作成する' do
    quiz = game_list.quizzes.create(content: '問題内容')

    get api_v1_quiz_path(game_list.id)
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    json['data'].each do |quiz|
      expect(quiz['attributes']['content']).to eq('問題内容')
    end
  end
end
