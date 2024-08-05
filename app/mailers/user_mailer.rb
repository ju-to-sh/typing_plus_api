class UserMailer < ApplicationMailer
  def reset_password_email(user)
    @user = User.find user.id
    @url = if Rails.env.development? || Rails.env.test?
             "http://localhost:3000/password_resets/#{@user.reset_password_token}/edit"
           else
             "https://typing-plus-front.vercel.app/password_reset/#{@user.reset_password_token}/edit"
           end
    mail(to: user.email, subject: 'パスワードリセット')
  end
end
