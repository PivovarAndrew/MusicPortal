json.extract! user_profile, :id, :avatar, :name, :surname, :nickname, :date_of_birthday, :address, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
