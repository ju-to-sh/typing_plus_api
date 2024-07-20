require 'rails_helper'

describe 'RegistrationAPI' do
  context '新規ユーザー登録に成功する場合' do
    it '新規ユーザー作成に成功' do
      user_params = { nickname: 'user', email: 'user@example.com', password: 'password', password_confirmation: 'password' }

      expect { post api_v1_registration_path, params: { user: user_params } }.to change(User, :count).by(+1)
      expect(response.status).to eq(200)

      user = User.find_by(nickname: 'user')
      expect(ApiKey.exists?(user_id: user.id)).to be_truthy
    end
  end

  context '新規ユーザー登録に失敗する場合' do
    it 'nicknameが未入力で新規ユーザー作成に失敗' do
      user_params = { nickname: '', email: 'user@example.com', password: 'password', password_confirmation: 'password' }
      post api_v1_registration_path, params: { user: user_params }

      json = JSON.parse(response.body)
      expect(json['errors']).to include "Nickname can't be blank"
      expect(response.status).to eq(400)
    end

    it 'emailが未入力で新規ユーザー作成に失敗' do
      user_params = { nickname: 'user', email: '', password: 'password', password_confirmation: 'password' }
      post api_v1_registration_path, params: { user: user_params }

      json = JSON.parse(response.body)
      expect(json['errors']).to include "Email can't be blank"
      expect(response.status).to eq(400)
    end

    it '既に登録済みのemailを入力して新規ユーザー作成に失敗' do
      user_params = { nickname: 'user', email: 'user@example.com', password: 'password', password_confirmation: 'password' }
      post api_v1_registration_path, params: { user: user_params }
      expect(response.status).to eq(200)
      post api_v1_registration_path, params: { user: user_params }

      json = JSON.parse(response.body)
      expect(json['errors']).to include 'Email has already been taken'
      expect(response.status).to eq(400)
    end

    it 'passwordが未入力で新規ユーザー作成に失敗' do
      user_params = { nickname: 'user', email: 'user@example.com', password: '', password_confirmation: 'password' }
      post api_v1_registration_path, params: { user: user_params }

      json = JSON.parse(response.body)
      expect(json['errors']).to include 'Password is too short (minimum is 3 characters)', "Password confirmation doesn't match Password"
      expect(response.status).to eq(400)
    end
  end
end
