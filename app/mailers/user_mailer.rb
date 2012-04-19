class UserMailer < ActionMailer::Base
  default to: email_address
  
  def send_contest_mail(user)
    @user = user
    mail( :subject => "FB Contest", :from => user.email )
  end
end
