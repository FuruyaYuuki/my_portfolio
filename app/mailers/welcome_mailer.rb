class WelcomeMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Opcへようこそ！悩みや相談事を気軽に質問して下さい！')
  end
end
