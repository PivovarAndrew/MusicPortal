class InterestSubscriptionMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    User.find_each do |user|
      InterestSubscriptionMailer.with(user: user, album: DailyAlbumService.new.receive_daily_album(user)).daily_album_mailer.deliver_now
    end
  end
end
