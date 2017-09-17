=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root->school_properties->athlete_list
{"id"=>"root_B_school_properties_B_athlete_list_P_id",
 "school_id"=>"root_B_school_properties_B_athlete_list_P_school_id",
 "graduation_year"=>
  "root_B_school_properties_B_athlete_list_P_graduation_year"}

Node Path: root->school_properties
{"name"=>"root_B_school_properties_P_name",
 "country"=>"root_B_school_properties_P_country",
 "graduation_years"=>"root_B_school_properties_P_graduation_years"}

Node Path: root
{"id"=>"root_P_id"}
=end
class ObjectArrayInSingleObjectMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_B_school_properties_B_athlete_list_P_id] = value_by_column_name("athlete_id")
    @json_nodes[:root_B_school_properties_B_athlete_list_P_school_id] = value_by_column_name("athlete_school_id")
    @json_nodes[:root_B_school_properties_B_athlete_list_P_graduation_year] = value_by_column_name("athlete_graduation")
    @json_nodes[:root_B_school_properties_P_name] = value_by_column_name("name")
    @json_nodes[:root_B_school_properties_P_country] = value_by_column_name("country")
    @json_nodes[:root_B_school_properties_P_graduation_years] = value_by_column_name("graduation_years")
    @json_nodes[:root_P_id] = value_by_column_name("id")
  end
end