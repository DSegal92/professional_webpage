class ContactController < ApplicationController
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    respond_to do |format|
      if @contact.save
      	@contactMail = Contact.last()
      	topic = @contactMail.topic
      	name = @contactMail.name
      	email = @contactMail.email
        company = @contactMail.company
        website = @contactMail.website
      	message = @contactMail.message
      	ContactMailer.newMessage(name, email, company, website, topic, message).deliver  
        format.html { redirect_to "/contact", notice: 'Your message has been sent, thanks for writing!'}
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { redirect_to "/contact", notice: 'Unable to send message, please make sure all required fields are filled.' }
        format.json { render json: @contact.errors, status: :unprocessable_entity}
      end
    end
  end

	
end
