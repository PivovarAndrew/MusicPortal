# == Schema Information
#
# Table name: tracks
#
#  id              :bigint           not null, primary key
#  audio_link      :string
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
  belongs_to :album
  validates :album_id, presence: true
  validates :name, presence: true
  validates :source_link, presence: true
  validates :duration, presence: true
  validates :tags, presence: true
  validates :preview_picture, presence: true
  validates :audio_link, presence: true
end
