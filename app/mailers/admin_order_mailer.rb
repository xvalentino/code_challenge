class AdminOrderMailer < ActionMailer::Base
  default from: "codechallengesrule@example.com"

  def email_admin_about_order(user, order)
    @user = user
    @order = order
    mail(to: 'storedom-overlord@example.com', subject: "An order was just placed by #{@user.name} for Order #{@order.id}")
  end
end
