=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root->user
{"user"=>"root_B_user_A_user"}

Node Path: root->athlete
{"school_id"=>"root_B_athlete_P_school_id",
 "graduation_year"=>"root_B_athlete_P_graduation_year",
 "created_at"=>"root_B_athlete_P_created_at",
 "updated_at"=>"root_B_athlete_P_updated_at"}

Node Path: root
{"game_id"=>"root_P_game_id"}
=end
class GameRostersWithUserMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_B_user_A_user] = value_by_column_name("user_info")
    @json_nodes[:root_B_athlete_P_school_id] = value_by_column_name("school_id")
    @json_nodes[:root_B_athlete_P_graduation_year] = value_by_column_name("graduation_year")
    @json_nodes[:root_B_athlete_P_created_at] = value_by_column_name("created_at")
    @json_nodes[:root_B_athlete_P_updated_at] = value_by_column_name("updated_at")
    @json_nodes[:root_P_game_id] = value_by_column_name("game_id")
  end
end