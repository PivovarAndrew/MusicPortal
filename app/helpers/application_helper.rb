module ApplicationHelper
  DEFAULT_AVATAR_IMAGE = "default_avatar.png"

  def default_avatar(user_profile)
    user_profile.avatar.url.nil? ? DEFAULT_AVATAR_IMAGE : user_profile.avatar.url
  end
end
