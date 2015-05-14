class UserMailer < ActionMailer::Base
  default from: "powerprjct@gmail.com"

  def welcome_email(user)

    @user = user
    @url = 'http://www.powerproject.com'
    attachments.inline["powerpuff-girls.jpg"] = File.read(Rails.root.join('app/assets/images/powerpuff-girls.jpg'))
    mail(to: @user.email, subject: "Welcome to Power Project!")
  end
end
