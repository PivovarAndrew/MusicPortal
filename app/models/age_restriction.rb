# == Schema Information
#
# Table name: age_restrictions
#
#  id          :bigint           not null, primary key
#  restriction :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class AgeRestriction < ApplicationRecord
end
