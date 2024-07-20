require 'rails_helper'

describe 'UserSessions API' do
  let!(:user) { User.create!(nickname: 'user', email: 'user@example.com', password: 'password', password_confirmation: 'password') }

  describe 'POST /login' do
    context 'ユーザーログインに成功する場合' do
      before do
        post api_v1_login_path, params: { email: user.email, password: 'password' }
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
        expect(json['errors']).to include "ActiveRecord::RecordNotFound"
      end
    end
  end
end
