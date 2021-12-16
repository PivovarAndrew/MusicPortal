# == Schema Information
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :track_genres
  has_many :tracks, through: :track_genres
end
