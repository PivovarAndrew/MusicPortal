# Class required for getting daily album
class DailyAlbum
  def receive_daily_album(user)
    if user.albums
      user.albums.group(:main_genre).order("count_id DESC").limit(3).count(:id).to_a.sample[0]
    else
      Album.all.sample
    end
  end
end
