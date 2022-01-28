# == Schema Information
#
# Table name: user_albums
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_user_albums_on_album_id  (album_id)
#  index_user_albums_on_user_id   (user_id)
#

class UserAlbum < ApplicationRecord
  belongs_to :user
  belongs_to :album
end
