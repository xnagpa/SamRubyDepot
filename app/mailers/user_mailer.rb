class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def welcome_email(order)
    @order = order
    @url  = 'http://example.com/login'
    mail(to: @order.email, subject: 'Welcome to My Awesome Site')
  end
  
end
