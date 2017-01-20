class SendMailJob < ApplicationJob
  #@queue = :sendmail
  queue_as :default
  
  def perform(users,requirements)
    UserMailer.sample_mail(users,requirements).deliver_now
  end
end
