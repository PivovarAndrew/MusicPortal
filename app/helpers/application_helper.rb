module ApplicationHelper
  MIN_RATING_VALUE = 1

  def get_rating(album)
    likes_count = likes_count.zero? ? MIN_RATING_VALUE : album.likes.count
    dislikes_count = dislikes_count.zero? ? MIN_RATING_VALUE : album.dislikes.count
    ((likes.count / dislikes.count) * 10).round(0)
  end
end
