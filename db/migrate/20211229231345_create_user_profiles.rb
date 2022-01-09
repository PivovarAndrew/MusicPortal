class CreateUserProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_profiles do |t|
      t.string :avatar
      t.string :name
      t.string :surname
      t.string :nickname
      t.date :date_of_birthday
      t.string :address

      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
