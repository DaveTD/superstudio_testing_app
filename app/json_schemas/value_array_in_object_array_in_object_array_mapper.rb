=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root->athletes->game_dates
{"items"=>"root_B_athletes_B_game_dates_A_items"}

Node Path: root->athletes
{"athlete_id"=>"root_B_athletes_P_athlete_id",
 "user_id"=>"root_B_athletes_P_user_id",
 "graduation_year"=>"root_B_athletes_P_graduation_year"}

Node Path: root
{"school_id"=>"root_P_school_id",
 "name"=>"root_P_name",
 "country"=>"root_P_country",
 "graduation_years"=>"root_P_graduation_years"}
=end
class ValueArrayInObjectArrayInObjectArrayMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_B_athletes_B_game_dates_A_items] = value_by_column_name("record_date")
    @json_nodes[:root_B_athletes_P_athlete_id] = value_by_column_name("athlete_id")
    @json_nodes[:root_B_athletes_P_user_id] = value_by_column_name("user_id")
    @json_nodes[:root_B_athletes_P_graduation_year] = value_by_column_name("graduation_year")
    @json_nodes[:root_P_school_id] = value_by_column_name("school_id")
    @json_nodes[:root_P_name] = value_by_column_name("name")
    @json_nodes[:root_P_country] = value_by_column_name("country")
    @json_nodes[:root_P_graduation_years] = value_by_column_name("graduation_years")
  end
end