class CreateTrackAgeRestrictions < ActiveRecord::Migration[6.1]
  def change
    create_table :track_age_restrictions do |t|
      t.belongs_to :track
      t.belongs_to :age_restriction
      t.timestamps
    end
  end
end
