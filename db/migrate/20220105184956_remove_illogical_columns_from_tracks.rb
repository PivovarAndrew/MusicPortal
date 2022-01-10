class RemoveIllogicalColumnsFromTracks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tracks, :release_date
    remove_column :tracks, :countries
    remove_column :tracks, :main_genre
    remove_column :tracks, :performer
    remove_column :tracks, :age_restrictions
  end
end
