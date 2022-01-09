class InterestSubscriptionMailer < ApplicationMailer
  def daily_album_mailer
    @user = User.all.find(params[:user])
    @album = Albums.all.find(params[:album])
    mail(to: @user.email, subject: "Daily album!")
  end
end
