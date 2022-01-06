class CreateAlbumAgeRestrictions < ActiveRecord::Migration[6.1]
  def change
    create_table :album_age_restrictions do |t|
      t.belongs_to :album
      t.belongs_to :age_restriction
      t.timestamps
    end
  end
end
