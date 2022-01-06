# == Schema Information
#
# Table name: albums
#
#  id                :bigint           not null, primary key
#  age_restrictions  :string
#  countries         :string
#  description       :text
#  image_preview_url :string
#  main_genre        :string
#  name              :string
#  performer         :string
#  release_date      :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Album < ApplicationRecord
  has_many :tracks, dependent: :destroy

  has_many :user_albums

  has_many :album_age_restrictions
  has_many :age_restrictions, through: :album_age_restrictions

  has_many :album_genres
  has_many :genres, through: :album_genres

  has_many :user, through: :user_albums

  validates :name, presence: true
  validates :image_preview_url, presence: true
  validates :release_date, presence: true
  validates :countries, presence: true
  validates :main_genre, presence: true
  validates :performer, presence: true
  validates :age_restrictions, presence: true
end
