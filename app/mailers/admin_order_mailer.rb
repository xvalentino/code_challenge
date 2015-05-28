class AdminOrderMailer < ActionMailer::Base
  default from: "codechallengesrule@example.com"

  def email_admin_about_order(user, order)
    @user = user
    @order = order
    mail(to: 'email@email.com', subject: 'An order was just placed!')
  end
end
