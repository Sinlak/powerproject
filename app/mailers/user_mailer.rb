class UserMailer < ActionMailer::Base
  default from: "powerprjct@gmail.com"

  def welcome_email(user)

    @user = user
    @url = 'http://www.powerproject.com'
    mail(to: @user.email, subject: "Welcome to Power Project!")
  end
end
