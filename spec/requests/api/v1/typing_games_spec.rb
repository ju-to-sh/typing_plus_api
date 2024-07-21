require 'rails_helper'

RSpec.describe 'TypingGameAPI', type: :request do
  let(:game_list) { create(:game_list) }

  it '特定のタイピング問題を取得する' do
    typing = game_list.typing_games.create(content: 'hello world!')

    get api_v1_typing_game_path(game_list.id)
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    json['data'].each do |typing|
      expect(typing['attributes']['content']).to eq('hello world!')
    end
  end
end
