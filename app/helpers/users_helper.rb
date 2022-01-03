module UsersHelper
  EMPTY_MESSAGE = "Still not filled"

  def name?(user)
    user.user_profile.name && user.user_profile.surname ? "#{user.user_profile.name} #{user.user_profile.surname}" : user.email
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
