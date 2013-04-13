class ContactController < ApplicationController
	def new
		 @contact = Contact.new(params[:contact])
		 ContactMailer.newMessage().deliver  
	end

	
end
