class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :api_keys, dependent: :destroy
  has_many :typing_game_results, dependent: :destroy
  has_many :quiz_results, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  mount_uploader :avatar, AvatarUploader

  def activate_api_key!
    return api_keys.active.first if api_keys.active.exists?

    api_keys.create
  end
end
