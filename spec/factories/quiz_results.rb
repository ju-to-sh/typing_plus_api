FactoryBot.define do
  factory :quiz_result do
    select_answer { 1 }
    quiz { nil }
    user { nil }
  end
end
