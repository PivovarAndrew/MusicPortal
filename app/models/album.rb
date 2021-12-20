# == Schema Information
#
# Table name: albums
#
#  id                :bigint           not null, primary key
#  description       :text
#  image_preview_url :string
#  name              :string
#  release_date      :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Album < ApplicationRecord
end
