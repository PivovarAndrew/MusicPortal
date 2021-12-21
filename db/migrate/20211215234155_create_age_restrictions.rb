class CreateAgeRestrictions < ActiveRecord::Migration[6.1]
  def change
    create_table :age_restrictions do |t|
      t.integer :value, null: false

      t.timestamps
    end
  end
end
