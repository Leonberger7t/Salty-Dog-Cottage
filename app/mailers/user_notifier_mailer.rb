class UserNotifier < ActionMailer::Base
  default :to => '4quinn@optonline.no-repeat'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_request_email
    @user = user
    mail( :from => email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
