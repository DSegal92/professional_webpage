class ContactMailer < ActionMailer::Base
  default from: "postmaster@segal.mailgun.org"
   def newMessage(name, email, company, website, topic, message)
   	@name = name
   	@email = email
   	@company = company
   	@website = website
   	@topic = topic
   	@message = message
    mail(to: "dls148@case.edu", :subject => @topic)
  end
end
