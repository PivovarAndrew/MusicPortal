# == Schema Information
#
# Table name: age_restrictions
#
#  id         :bigint           not null, primary key
#  value      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AgeRestriction < ApplicationRecord
  validates :value, presence: true, uniqueness: true
  has_many :track_age_restrictions
  has_many :tracks, through: :track_age_restrictions
end
