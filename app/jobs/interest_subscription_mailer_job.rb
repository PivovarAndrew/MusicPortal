class InterestSubscriptionMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    User.all.find_each do |user|
      InterestSubscriptionMailer.with(user: user.id, album: DailyAlbumService.new.receive_daily_album(user).id).daily_album_mailer.deliver_now
    end
  end
end
