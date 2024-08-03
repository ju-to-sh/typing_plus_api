require 'rails_helper'
require 'support/login_macros'

RSpec.describe 'UserSessions API', type: :request do
  include LoginMacros

  let!(:user) do
    User.create!(nickname: 'user', email: 'user@example.com', password: 'password', password_confirmation: 'password')
  end

  describe 'POST /login' do
    context 'ユーザーログインに成功する場合' do
      before do
        login(user)
      end

      it 'ログイン成功' do
        json = JSON.parse(response.body)

        expect(response.status).to eq(200)
        expect(json['data']['attributes']['nickname']).to eq(user.nickname)
        expect(json['data']['attributes']['email']).to eq(user.email)
        expect(response.headers['AccessToken']).to eq(user.api_keys.first.access_token)
      end
    end

    context 'ユーザーログインに失敗する場合' do
      it 'ログインに失敗する' do
        post api_v1_login_path, params: { email: user.email, password: 'wrong_password' }
        json = JSON.parse(response.body)

        expect(response.status).to eq(404)
        expect(json['errors']).to include 'ActiveRecord::RecordNotFound'
      end
    end
  end

  describe 'DELETE /logout' do
    before do
      login(user)
    end

    it 'ログアウトに成功する' do
      post api_v1_logout_path, params: { email: user.email, password: 'password' }

      expect(response.status).to eq(401)
      expect(response.headers['AccessToken']).to be_nil
    end
  end
end
