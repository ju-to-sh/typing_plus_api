class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :api_keys, dependent: :destroy
  has_many :typing_game_results, dependent: :destroy
  has_many :quiz_results, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_game_lists, through: :likes, source: :game_list

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

  def like(game_list)
    like_game_lists << game_list
  end

  def unlike(game_list)
    like_game_lists.destroy(game_list)
  end

  def like?
    like_game_lists.include?(game_list)
  end
end
