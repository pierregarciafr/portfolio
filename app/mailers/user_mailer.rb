class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.make_contact.subject
  #
  def make_contact
    raise
    @greeting = "Hi"

    mail to: "pierregcode@gmail.com"
  end
end
