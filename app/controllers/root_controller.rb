class RootController < ApplicationController

  def index
    # nada, handled by javascript
  end

  def handle_root_post
    mail
  end

  def handle_mail_get
    # nada, the page just says "sent e-mail"
  end

  # private functions
  def mail
    # send email
    puts "sending mail.."
    MyMailer.send_email.deliver_now # or deliver_later
    head :ok # 200 header response
      # if ok, get /mail (handled by js in index page)
  end
end
