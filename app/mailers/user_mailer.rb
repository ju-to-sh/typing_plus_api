class UserMailer < ApplicationMailer
  def reset_password_email(user)
    @user = User.find user.id
    if Rails.env.development? || Rails.env.test?
      @url = "http://localhost:3000/password_reset"
    else
      @url = "https://typing-plus-front.vercel.app/password_reset"
    end
    mail(:to => user.email,  :subject => "パスワードリセット")
  end
end
