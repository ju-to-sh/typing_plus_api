module LoginMacros
  def login(user)
    post api_v1_login_path, params: { email: user.email, password: 'password' }
  end
end
