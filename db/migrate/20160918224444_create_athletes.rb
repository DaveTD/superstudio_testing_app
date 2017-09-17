class CreateAthletes < ActiveRecord::Migration[5.0]
  def change
    create_table :athletes do |t|
      t.references :user
      t.references :school
      t.integer :graduation_year
      t.timestamps
    end
  end
end
