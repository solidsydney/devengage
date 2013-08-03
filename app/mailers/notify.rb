class Notify < ActionMailer::Base
 default :from => "from@example.com"

  def send_email(user)
   @user = user
     mail :to => user.email, :subject => "Welcome to devengage", :from => "devengage.com"
   end
end
