class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  def sample_mail(users, requirements)
      puts "Sample mail"
  	  @users = users
  	  @requirements = requirements
  	  @users.each do |u|
  	  		sample(u, requirements)
  	  end
  end

  def sample(user, requirements)
  	@user = user
  	@requirements = requirements
  	mail to: user.email, subject: "Sponsorship portal - List of open requirements"
  end

end
