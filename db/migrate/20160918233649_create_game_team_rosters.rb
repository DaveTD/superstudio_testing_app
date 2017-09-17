class CreateGameTeamRosters < ActiveRecord::Migration[5.0]
  def change
    create_table :game_team_rosters do |t|
      t.references :game
      t.references :athlete
      t.timestamps
    end
  end
end
