class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = '99cats.com'
    mail(to: @user, subject: 'Welcome to 99 Cats!')
  end
end
