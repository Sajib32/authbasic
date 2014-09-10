class UserMailer < ActionMailer::Base
  default from: "sajibnstu@gmail.com"


  def welcome_email(user)
    @user = user
    @url = 'http://localhost:4000/sign_in'
    @site_name = "localhost:4000"
    mail(:to => user.email, :subject => 'Welcome to my website.', :from => "sajibnstu@gmail.com")
  end
end
