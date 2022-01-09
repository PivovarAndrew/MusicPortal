# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GENRES = ["Rock", "Jazz", "Hip-Hop", "Pop", "Blues", "Folk", "Classic", "Heavy Metal", "Thrash Metal", "Country",
          "R&B", "Punk Rock", "Electronic", "Soul", "Reggae", "Funk", "Techno", "Disco", "Alternative Rock", "Ambient",
          "Swing", "Industrial", "Gospel", "Trance", "Instrumental", "Dubstep", "Breakbeat", "Ska", "Pop Rock", "Indie Rock",
          "Orchestra", "Psychedelic Music", "Electro", "New Wave", "Experimental", "World", "Grunge", "Drum & Bass", "Hardcore", "Baroque",
          "Bossa Nova", "Bluegrass", "Shoegaze", "Easy Listening", "Enka", "Holiday", "J-Pop", "Latin", "Power Metal", "New Age", "Opera"].freeze

AGE_RESTRICTIONS = [0, 6, 12, 16, 18].freeze

ROLES = %w[User Editor Admin]

TEST_USERS_COUNT = 30
TEST_ALBUMS_COUNT = 30

ActiveRecord::Base.transaction do
  GENRES.each do |genre_name|
    Genre.create(name: genre_name)
  end
end

ActiveRecord::Base.transaction do
  AGE_RESTRICTIONS.each do |age_restriction|
    AgeRestriction.create(value: age_restriction)
  end
end

ActiveRecord::Base.transaction do
  ROLES.each do |role|
    Role.create(name: role)
  end
end

ActiveRecord::Base.transaction do
  TEST_USERS_COUNT.times do |counter|
    email = "test-#{counter + 1}@gmail.com"
    password = "123456"
    User.create!(
      email: email,
      password: password,
      password_confirmation: password,
    )
  end
end

ActiveRecord::Base.transaction do
  TEST_USERS_COUNT.times do |counter|
    Album.create!(
      name: "Name #{counter + 1}",
      description: "Descr #{counter + 1}",
      release_date: DateTime.current.to_date + counter,
      image_preview_url: "https://www.hd-freewallpapers.com/latest-wallpapers/desktop-funny-images-of-dogs-and-puppies-download.jpg",
    )
  end
end

ActiveRecord::Base.transaction do
  UserProfile.create!(
    name: "Andrew",
    surname: "Pivovar",
    nickname: "Admin",
    date_of_birthday: DateTime.current.to_date,
    address: "Example address",
    user_id: 8,
  )
end
