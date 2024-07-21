require 'rails_helper'

RSpec.describe 'GameListAPI', type: :request do
  it '特定のgame_listを取得する' do
    game_list = create(:game_list, title: 'Rspec')

    get api_v1_game_list_path(game_list.id)
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(json['data']['attributes']['title']).to eq(game_list.title)
  end

  it 'クイズ問題のgame_listを取得する' do
    quiz_list = create_list(:game_list, 10)
    typing_list = create(:game_list, game_type: 1)

    get api_v1_quizzes_path
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(json['data'].length).to eq(10)
    json['data'].each do |game|
      expect(game['attributes']['game_type']).to eq('quiz')
    end
  end

  it 'タイピング問題のgame_listを取得する' do
    quiz_list = create_list(:game_list, 2)
    typing_list = create_list(:game_list, 8, game_type: 1)

    get api_v1_typing_games_path
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(json['data'].length).to eq(8)
    json['data'].each do |game|
      expect(game['attributes']['game_type']).to eq('typing')
    end
  end
end
