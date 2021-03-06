def email_password
  ENV['email_password'] ||= EMAIL['destdigi']['password']
end
def email_address
  ENV['email_address'] ||= EMAIL['destdigi']['address']
end
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => email_address,
  :password             => email_password,
  :authentication       => "plain",
  :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options[:host] = "0.0.0.0:3000"