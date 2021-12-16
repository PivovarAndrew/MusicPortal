# == Schema Information
#
# Table name: track_age_restrictions
#
#  id                 :bigint           not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  age_restriction_id :bigint
#  track_id           :bigint
#
# Indexes
#
#  index_track_age_restrictions_on_age_restriction_id  (age_restriction_id)
#  index_track_age_restrictions_on_track_id            (track_id)
#
require "test_helper"

class TrackAgeRestrictionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
