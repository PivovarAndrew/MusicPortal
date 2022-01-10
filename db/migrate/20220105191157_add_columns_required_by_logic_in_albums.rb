class AddColumnsRequiredByLogicInAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :countries, :string
    add_column :albums, :main_genre, :string
    add_column :albums, :performer, :string
    add_column :albums, :age_restrictions, :integer
  end
end
