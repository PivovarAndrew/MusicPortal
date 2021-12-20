class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.string :image_preview_url
      t.date :release_date

      t.timestamps
    end
  end
end
