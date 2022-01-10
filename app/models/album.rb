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
  has_many :user, through: :user_albums

  validates :name, presence: true
  validates :image_preview_url, presence: true
  validates :release_date, presence: true

  validates :main_genre, presence: true
  validates :performer, presence: true
  has_many :likes
  has_many :dislikes
  has_many :comments
end
