=begin
@users = User.where(activated: true, admin: false)
@requirements = Requirement.where(matched: false)

#Resque.enqueue(SendMailJob, @users, @requirements)
SendMailJob.perform_now(@users,@requirements)
=end