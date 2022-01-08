class InterestSubscriptionMailer < ApplicationMailer
  def daily_album
    @user = params[:user]
    @album = params[:album]
    mail(to: @user.email, subject: "Daily album!")
  end
end
