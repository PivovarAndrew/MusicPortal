class RemoveAlbumAgeRestrictions < ActiveRecord::Migration[6.1]
  def change
    drop_table :album_age_restrictions
  end
end
