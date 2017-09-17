=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root->school_details
{"id"=>"root_B_school_details_P_id",
 "name"=>"root_B_school_details_P_name",
 "country"=>"root_B_school_details_P_country",
 "graduation_years"=>"root_B_school_details_P_graduation_years"}

Node Path: root->student_ids_again
{"items"=>"root_B_student_ids_again_A_items"}

Node Path: root
{"id"=>"root_P_id"}
=end
class SingleObjectWithValueArrayMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_B_school_details_P_id] = value_by_column_name("id")
    @json_nodes[:root_B_school_details_P_name] = value_by_column_name("name")
    @json_nodes[:root_B_school_details_P_country] = value_by_column_name("country")
    @json_nodes[:root_B_school_details_P_graduation_years] = value_by_column_name("graduation_years")
    @json_nodes[:root_B_student_ids_again_A_items] = value_by_column_name("athlete_id_again")
    @json_nodes[:root_P_id] = value_by_column_name("id")
  end
end