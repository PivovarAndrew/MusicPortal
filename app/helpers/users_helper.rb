module UsersHelper
  EMPTY_MESSAGE = "Still not filled"

  def name?(user_profile)
    user_profile.name && user_profile.surname ? "#{user_profile.name} #{user_profile.surname}" : current_user.email
  end

  def nickname?(user_profile)
    user_profile.nickname || EMPTY_MESSAGE
  end

  def date_of_birthday?(user_profile)
    user_profile.date_of_birthday || EMPTY_MESSAGE
  end

  def address?(user_profile)
    user_profile.address || EMPTY_MESSAGE
  end
end
