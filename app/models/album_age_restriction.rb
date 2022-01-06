# == Schema Information
#
# Table name: album_age_restrictions
#
#  id                 :bigint           not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  age_restriction_id :bigint
#  album_id           :bigint
#
# Indexes
#
#  index_album_age_restrictions_on_age_restriction_id  (age_restriction_id)
#  index_album_age_restrictions_on_album_id            (album_id)
#
class AlbumAgeRestriction < ApplicationRecord
  belongs_to :album
  belongs_to :age_restriction
end
