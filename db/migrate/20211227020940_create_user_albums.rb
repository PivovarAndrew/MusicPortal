class CreateUserAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :user_albums do |t|
      t.belongs_to :user
      t.belongs_to :album
      t.timestamps
    end
  end
end
