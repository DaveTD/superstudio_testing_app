=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root->schools->ids
{"items"=>"root_B_schools_B_ids_A_items"}

Node Path: root->schools->names
{"items"=>"root_B_schools_B_names_A_items"}

Node Path: root->schools->countries
{"items"=>"root_B_schools_B_countries_A_items"}

Node Path: root
{"graduation_years"=>"root_P_graduation_years"}
=end
class ValueArrayInsideObjectArrayMapper < Superstudio::SqlJsonBuilder
  def map_row
    @json_nodes[:root_B_schools_B_ids_A_items] = value_by_column_name("id")
    @json_nodes[:root_B_schools_B_names_A_items] = value_by_column_name("name")
    @json_nodes[:root_B_schools_B_countries_A_items] = value_by_column_name("country")
    @json_nodes[:root_P_graduation_years] = value_by_column_name("graduation_years")
  end
end