class DeleteUserProfileAddress < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_profiles, :address
  end
end
