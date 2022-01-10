class ChangeAgeRestrictionValueType < ActiveRecord::Migration[6.1]
  def change
    change_column :age_restrictions, :value, :string
    change_column :albums, :age_restrictions, :string
  end
end
