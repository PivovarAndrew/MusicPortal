module ApplicationHelper
  MAX_RATING_VALUE = 100
  NO_RATING_VALUE = 0
  DEFAULT_AVATAR_IMAGE = "default_avatar.png"
  HEX_COLORS_COUNT = 3

  def get_rating(album)
    likes_count = album.likes.count
    dislikes_count = album.dislikes.count
    total_ratings = likes_count + dislikes_count
    total_ratings.zero? ? NO_RATING_VALUE : (MAX_RATING_VALUE * likes_count / total_ratings).round(-1)
  end

  def rated?(album)
    !album.likes.empty? || !album.dislikes.empty?
  end

  def default_avatar(user_profile)
    user_profile.avatar.url || DEFAULT_AVATAR_IMAGE
  end

  def admin_or_editor?
    current_user.try(:admin? || :editor?) 
  end

  def random_hex_colors
    HEX_COLORS_COUNT.times.map { "%06x" % (rand * 0xffffff) }
  end
end
