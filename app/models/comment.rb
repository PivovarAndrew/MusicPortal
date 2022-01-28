# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint           not null
#  parent_id  :integer
#  user_id    :bigint           not null
#
# Indexes
#
#  index_comments_on_album_id  (album_id)
#  index_comments_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (album_id => albums.id)
#  fk_rails_...  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :album
  belongs_to :user
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :comments, foreign_key: :parent_id

  # belongs_to :signatory, class_name: 'User', optional: true
  # has_many :users, foreign_key: :signatory_id
end
