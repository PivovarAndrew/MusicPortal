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

  NAME_AND_SURNAME_LENGTH = 2..20
  NICKNAME_LENGTH = 5..25
  ONE_WORD_REGEX = /^\w+$/
  ONE_WORD_MESSAGE = "must be one word."
  OCCUPIED_NICKNAME_MESSAGE = "nickname is occuppied by another user."

  validates :name,
            presence: { message: ONE_WORD_MESSAGE },
            length: { within: NAME_AND_SURNAME_LENGTH },
            format: { with: ONE_WORD_REGEX, multiline: true },
            on: :update

  validates :surname,
            presence: { message: ONE_WORD_MESSAGE },
            length: { within: NAME_AND_SURNAME_LENGTH },
            format: { with: ONE_WORD_REGEX, multiline: true },
            on: :update

  validates :nickname,
            uniqueness: true,
            presence: { message: OCCUPIED_NICKNAME_MESSAGE },
            length: { within: NICKNAME_LENGTH },
            on: :update
end
