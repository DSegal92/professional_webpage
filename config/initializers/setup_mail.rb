ActionMailer::Base.smtp_settings = {
	:address				=> "smtp.mailgun.org",
	:port					=> "587",
	:domain					=> "segal.herokuapp.com",
	:user_name				=> "postmaster@segal.mailgun.org",
	:password				=> "8eaj2wtgqi31",
	:authentication 		=> "plain"
}


ActionMailer::Base.delivery_method = :smtp