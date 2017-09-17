=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root
{"id"=>"root_P_id",
 "game_id"=>"root_P_game_id",
 "athlete_id"=>"root_P_athlete_id",
 "created_at"=>"root_P_created_at",
 "updated_at"=>"root_P_updated_at"}
=end
class GameTeamRosterMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_P_id] = value_by_column_name("id")
    @json_nodes[:root_P_game_id] = value_by_column_name("game_id")
    @json_nodes[:root_P_athlete_id] = value_by_column_name("athlete_id")
    @json_nodes[:root_P_created_at] = value_by_column_name("created_at")
    @json_nodes[:root_P_updated_at] = value_by_column_name("updated_at")
  end
end