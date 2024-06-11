class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :api_keys

  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true

  def activate_api_key!
    return api_keys.active.first if api_keys.active.exists?

    api_keys.create
  end
end
