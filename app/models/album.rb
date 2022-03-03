# == Schema Information
#
# Table name: albums
#
#  id                :bigint           not null, primary key
#  age_restrictions  :string
#  countries         :string
#  description       :text
#  image_preview_url :string
#  main_genre        :string
#  name              :string
#  performer         :string
#  release_date      :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Album < ApplicationRecord
  has_many :tracks, dependent: :destroy

  has_many :user_albums
  has_many :user, through: :user_albums

  validates :name, presence: true
  validates :image_preview_url, presence: true

  validates :performer, presence: true
  has_many :likes
  has_many :dislikes
  has_many :comments

  # Generate a CSV File of All Album Records
  def self.to_csv(fields = column_names, options={})
    CSV.generate do |csv|
      csv << fields
      all.each do |album|
        csv << album.attributes.values_at(*fields)
      end
    end
  end

  # Import CSV, Find or Create Album by its name.
  # Update the record.
  def self.import_to_csv(file)
    CSV.foreach(file.path, headers: true) do |row|
      albums_hash = row.to_hash
      album = find_or_initialize_by(name: albums_hash['name'])
      album.update(albums_hash)
    end
  end
end
