class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com" # TODO: will have to change this..
  layout "mailer" # app/view/layouts/mailer or application

  # TODO: not called anywhere..
  def send_mail
    mail(to: "rahil627@gmail.com", subject: "konnichiwa", body: "ruby rails kinda is.. magical")
  end
end
