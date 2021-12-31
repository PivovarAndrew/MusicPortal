module UserProfilesHelper
  DEFAULT_AVATAR_IMAGE = "default_avatar.png"

  def default_avatar(user_profile)
    user_profile.avatar.url.nil? ? DEFAULT_AVATAR_IMAGE : user_profile.avatar.url
  end

  def resource
    @resource ||= current_user
  end

  def resource_name
    current_user.user_profile.name || :user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
