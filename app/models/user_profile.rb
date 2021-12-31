# == Schema Information
#
# Table name: user_profiles
#
#  id               :bigint           not null, primary key
#  address          :string
#  avatar           :string
#  date_of_birthday :date
#  name             :string
#  nickname         :string
#  surname          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint
#
# Indexes
#
#  index_user_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class UserProfile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
end
