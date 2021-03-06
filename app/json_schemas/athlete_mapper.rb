=begin
Interpreted schema has the following data bodies. Multiple bodies indicates array nesting - non-included node names should not be included in @json_nodes because they are placeholders for array inserts.

Node Path: root
{"id"=>"root_P_id",
 "user_id"=>"root_P_user_id",
 "school_id"=>"root_P_school_id",
 "graduation_year"=>"root_P_graduation_year",
 "created_at"=>"root_P_created_at",
 "updated_at"=>"root_P_updated_at"}
=end
class AthleteMapper < Superstudio::SqlJsonBuilder
  def map_row
    #byebug
    @json_nodes[:root_P_id] = value_by_column_name("id")
    @json_nodes[:root_P_user_id] = value_by_column_name("user_id")
    @json_nodes[:root_P_school_id] = value_by_column_name("school_id")
    @json_nodes[:root_P_graduation_year] = value_by_column_name("graduation_year")
    @json_nodes[:root_P_created_at] = value_by_column_name("created_at")
    @json_nodes[:root_P_updated_at] = value_by_column_name("updated_at")
  end
end