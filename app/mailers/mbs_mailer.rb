class MbsMailer < ActionMailer::Base
  default from: "mbs@vmware.com"

   def confirmation_mail(request)
    @vmrequest = request
#    mail(to: "#{@vmrequest.requester}, #{@vmrequest.other}", subject:"New VM Build request")
  mail(to: "#{@vmrequest.requester}, #{@vmrequest.other}, itops-vmbuilt@vmware.com", subject:"New VM Build request")
  end
end
