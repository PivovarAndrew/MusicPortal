class CreateTrackGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :track_genres do |t|
      t.belongs_to :track
      t.belongs_to :genre
      t.timestamps
    end
  end
end
