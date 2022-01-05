# == Schema Information
#
# Table name: album_genres
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint
#  genre_id   :bigint
#
# Indexes
#
#  index_album_genres_on_album_id  (album_id)
#  index_album_genres_on_genre_id  (genre_id)
#
class AlbumGenre < ApplicationRecord
  belongs_to :album
  belongs_to :genre
end
