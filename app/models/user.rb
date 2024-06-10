class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true
end
