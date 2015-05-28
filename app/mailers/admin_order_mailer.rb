class AdminOrderMailer < ActionMailer::Base
  default from: "codechallengesrule@example.com"

  def email_admin_about_order(user, order)
    mail(to: 'storedom-overlord@example.com', 
         subject: 'An order was just placed!',
         body: "#{user.name} has just placed Order #{order.id}")
  end
end
