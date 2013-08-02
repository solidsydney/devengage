class Notify < ActionMailer::Base
  default from: "info@devengage.com"
  def send_email(user)
    @user = user
    mail :to => user.email, :subject => "Welcome to devengage", :from => "devengage.com"
  end
end
