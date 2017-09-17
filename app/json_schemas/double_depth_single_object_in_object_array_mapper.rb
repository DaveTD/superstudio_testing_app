=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root->schools->school_properties->other
{"country"=>"root_B_schools_B_school_properties_B_other_P_country"}

Node Path: root->schools->school_properties
{"name"=>"root_B_schools_B_school_properties_P_name"}

Node Path: root->schools
{"id"=>"root_B_schools_P_id"}

Node Path: root
{"graduation_years"=>"root_P_graduation_years"}
=end
class DoubleDepthSingleObjectInObjectArrayMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_B_schools_B_school_properties_B_other_P_country] = value_by_column_name("country")
    @json_nodes[:root_B_schools_B_school_properties_P_name] = value_by_column_name("name")
    @json_nodes[:root_B_schools_P_id] = value_by_column_name("id")
    @json_nodes[:root_P_graduation_years] = value_by_column_name("graduation_years")
  end
end