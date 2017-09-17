class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :sport
      t.references :home_school
      t.references :away_school
      t.integer :league_quality
      t.timestamps
    end
  end
end
