class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.text :description
      t.string :source_link
      t.date :release_date
      t.time :duration
      t.string :countries
      t.string :tags
      t.string :main_genre
      t.string :related_genres
      t.string :performer
      t.string :preview_picture
      t.string :age_restrictions

      t.timestamps
    end
  end
end
