10.times do |n|
  User.create(nickname: "user#{n+1}", email: "test#{n+1}@example.com", avatar: "")
end
