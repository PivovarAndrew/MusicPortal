class AddAddressToUserProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :user_profiles, :address, :string
  end
end
