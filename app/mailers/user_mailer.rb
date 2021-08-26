class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.mailer_created.subject
  #
  def mailer_created
    @user = params[:user]
    @greeting = "Hi"
    attachments['welcome image'] = File.read('app/assets/images/welcome.jpg')
    mail(
      from:'Hello <hello@email.com>',
      to: User.all.pluck(:email),
      cc: User.first.email,
      subject: 'New Account Verification'
    )
  end
end
