class Notifier < ActionMailer::Base
  default from: "webmaster@tutionIndia.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_friend.subject
  #
  def email_friend(sent_to,message,subject)
    @message=message
    mail to: 'shashitripathi253@gmail.com,'+sent_to,:subject => subject
  end
end
