# Preview all emails at http://localhost:3000/rails/mailers/interest_subscription_mailer
class InterestSubscriptionMailerPreview < ActionMailer::Preview
  def daily_album_mailer
    user = User.all.find_by(role: "admin")
    InterestSubscriptionMailer.with(user: user, album: DailyAlbumService.new.receive_daily_album(user)).daily_album_mailer
  end
end
