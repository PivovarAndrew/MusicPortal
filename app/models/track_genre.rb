# == Schema Information
#
# Table name: track_genres
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  genre_id   :bigint
#  track_id   :bigint
#
# Indexes
#
#  index_track_genres_on_genre_id  (genre_id)
#  index_track_genres_on_track_id  (track_id)
#
class TrackGenre < ApplicationRecord
  belongs_to :track
  belongs_to :genre
end
