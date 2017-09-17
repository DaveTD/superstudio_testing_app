=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root->athlete_part_1
{"user_id"=>"root_B_athlete_part_1_P_user_id"}

Node Path: root->athlete_part_2
{"school_id"=>"root_B_athlete_part_2_P_school_id"}

Node Path: root->athlete_part_3
{"graduation_year"=>"root_B_athlete_part_3_P_graduation_year"}

Node Path: root
{"game_id"=>"root_P_game_id"}
=end
class AthleteMultipleSingleObjectMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_B_athlete_part_1_P_user_id] = value_by_column_name("user_id")
    @json_nodes[:root_B_athlete_part_2_P_school_id] = value_by_column_name("school_id")
    @json_nodes[:root_B_athlete_part_3_P_graduation_year] = value_by_column_name("graduation_year")
    @json_nodes[:root_P_game_id] = value_by_column_name("game_id")
  end
end