# == Schema Information
#
# Table name: tracks
#
#  id               :bigint           not null, primary key
#  age_restrictions :string
#  countries        :string
#  description      :text
#  duration         :time
#  main_genre       :string
#  name             :string
#  performer        :string
#  preview_picture  :string
#  related_genres   :string
#  release_date     :date
#  source_link      :string
#  tags             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class TrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
