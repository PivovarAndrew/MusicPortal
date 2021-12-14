class CreateAgeRestrictions < ActiveRecord::Migration[6.1]
  def change
    create_table :age_restrictions do |t|
      t.string :restriction

      t.timestamps
    end
  end
end
