require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーションチェック' do
    it '設定した全てのバリデーションが機能しているか' do
      user = build(:user)
      expect(user).to be_valid
      expect(user.errors).to be_empty
    end

    it 'nicknameがない場合にバリデーションが機能してinvalidになるか' do
      user = build(:user, nickname: '')
      expect(user).to be_invalid
      expect(user.errors.messages[:nickname]).to eq(["can't be blank"])
    end

    it 'emailがない場合にバリデーションが機能してinvalidになるか' do
      user = build(:user, email: '')
      expect(user).to be_invalid
      expect(user.errors.messages[:email]).to eq(["can't be blank"])
    end

    it 'emailが被った場合にuniqueのバリデーションが機能してinvalidになるか' do
      user = create(:user, email: 'test1@example.com')
      another_user = build(:user, email: 'test1@example.com' )
      expect(another_user.save).to eq(false)
      expect(another_user.errors.messages[:email]).to eq(['has already been taken'])
    end

    it 'emailが被らない場合にバリデーションエラーが起きないか' do
      user = build(:user, email: 'test1@example.com')
      another_user = build(:user, email: 'test2@example.com' )
      expect(another_user).to be_valid
      expect(another_user.errors.messages[:email]).to be_empty
    end
  end
end
