# == Schema Information
#
# Table name: age_restrictions
#
#  id         :bigint           not null, primary key
#  value      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AgeRestriction < ApplicationRecord
  validates :value, presence: true, uniqueness: true

  has_many :album_age_restrictions, dependent: :destroy
  has_many :albums, through: :album_age_restrictions, dependent: :destroy
end
