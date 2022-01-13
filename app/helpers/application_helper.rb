module ApplicationHelper
  MAX_RATING_VALUE = 100
  NO_RATING_VALUE = 0
  DEFAULT_AVATAR_IMAGE = "https://img.flaticon.com/icons/png/512/306/306007.png"

  def get_rating(album)
    likes_count = album.likes.count
    dislikes_count = album.dislikes.count
    total_ratings = likes_count + dislikes_count
    total_ratings.zero? ? NO_RATING_VALUE : (MAX_RATING_VALUE * likes_count / total_ratings).round
  end

  def rated?(album)
    !album.likes.empty? || !album.dislikes.empty?
  end

  def default_avatar(user_profile)
    user_profile.avatar.url || DEFAULT_AVATAR_IMAGE
  end
end
