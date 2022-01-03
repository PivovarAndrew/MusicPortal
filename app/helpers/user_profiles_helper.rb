module UserProfilesHelper
  def resource
    @resource ||= current_user
  end

  def resource_name
    current_user.user_profile.name || :user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def show_name?
    @user_profile.name && @user_profile.surname ? "Name: #{@user_profile.name} #{@user_profile.surname}" : "Email: #{current_user.email}"
  end

  def show_nickname?
    "Nickname: #{@user_profile.nickname}" if @user_profile.nickname
  end

  def show_date_of_birthday?
    "Date of birthday: #{@user_profile.date_of_birthday}" if @user_profile.date_of_birthday
  end

  def show_address?
    "Address: #{@user_profile.address}" if @user_profile.address
  end
end
