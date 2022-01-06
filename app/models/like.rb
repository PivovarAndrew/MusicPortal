# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_likes_on_album_id              (album_id)
#  index_likes_on_user_id               (user_id)
#  index_likes_on_user_id_and_album_id  (user_id,album_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (album_id => albums.id)
#  fk_rails_...  (user_id => users.id)
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :album

  validates :user_id, uniqueness: { scope: :album_id }
end
