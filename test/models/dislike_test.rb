# == Schema Information
#
# Table name: dislikes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_dislikes_on_album_id              (album_id)
#  index_dislikes_on_user_id               (user_id)
#  index_dislikes_on_user_id_and_album_id  (user_id,album_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (album_id => albums.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class DislikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
