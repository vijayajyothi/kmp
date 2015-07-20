class MbsMailer < ActionMailer::Base
  default from: "mbs@vmware.com"

   def confirmation_mail(request)
    @request = request
    mail(to: "#{@request.requester},sugamasuhasini@vmware.com", subject:"New VM Build request")
  end
end
