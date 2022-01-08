# Preview all emails at http://localhost:3000/rails/mailers/interest_subscription_mailer
class InterestSubscriptionMailerPreview < ActionMailer::Preview
  def daily_album_mailer
    InterestSubscriptionMailer.with(user: User.all.sample, album: Album.all[0]).daily_album_mailer
  end
end
