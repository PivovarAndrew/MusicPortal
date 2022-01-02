class RemoveAddressFromUserProfile < ActiveRecord::Migration[6.1]
  def change
    remove_address :user_profiles, :address
  end
end
