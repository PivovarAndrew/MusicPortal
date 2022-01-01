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

  def name?
    @user_profile.name && @user_profile.surname ? "Name: #{@user_profile.name} #{@user_profile.surname}" : "Email: #{current_user.email}"
  end

  def nickname?
    @user_profile.nickname if @user_profile.nickname
  end

  def date_of_birthday?
    @user_profile.date_of_birthday if @user_profile.date_of_birthday
  end

  def address?
    @user_profile.address if @user_profile.address
  end
end
