class ContactMailer < ActionMailer::Base
  default from: "postmaster@segal.mailgun.org"
   def newMessage()
    mail(to: "dls148@case.edu", :subject => "This is a test")
  end
end
