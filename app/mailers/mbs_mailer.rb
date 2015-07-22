class MbsMailer < ActionMailer::Base
  default from: "mbs@vmware.com"

   def confirmation_mail(request)
    @vmrequest = request
    mail(to: "#{@vmrequest.requester}", subject:"New VM Build request")
  end
end
