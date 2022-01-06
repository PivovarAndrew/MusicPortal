class DeleteTrackAgeRestrictions < ActiveRecord::Migration[6.1]
  def change
    drop_table :track_age_restrictions
  end
end
