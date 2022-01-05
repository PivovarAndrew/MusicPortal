# == Schema Information
#
# Table name: albums
#
#  id                :bigint           not null, primary key
#  age_restrictions  :integer
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
require "test_helper"

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
