# == Schema Information
#
# Table name: tracks
#
#  id              :bigint           not null, primary key
#  description     :text
#  duration        :time
#  name            :string
#  preview_picture :string
#  related_genres  :string
#  source_link     :string
#  tags            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  album_id        :bigint
#
class Track < ApplicationRecord
  has_many :track_genres
  has_many :genres, through: :track_genres

  belongs_to :album
  validates :album_id, presence: true
end
