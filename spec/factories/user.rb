FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { 'password' }
    password_confirmation { 'password' }
    avatar { '' }
  end
end
