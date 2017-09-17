class SuperstudioTestingController < ActionController::Base

  def simple_to_json
    test_query = Athlete.all
    #test_query = Athlete.limit(150) 
    #test_query = GameTeamRoster.all
    render json: test_query.to_json
  end

  ####

  def simple_test
    test_query = Athlete.all
    test_output = AthleteMapper.new(test_query.to_sql)
    
    render json: test_output.json_result
  end

  def simple_test_single
    test_query = Athlete.limit(1)
    test_output = AthleteMapper.new(test_query.to_sql)
    
    render json: test_output.json_result
  end

  def simple_test_double
    test_query = Athlete.limit(2)
    test_output = AthleteMapper.new(test_query.to_sql)
    
    render json: test_output.json_result
  end

  ####
  
  def single_depth_test
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)
      # .order("game_id ASC")
      # .limit(2)

    test_output = AthleteGameTeamRosterMapper.new(test_query.to_sql)
    
    render json: test_output.json_result
  end

  def single_depth_test_single
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)
      .limit(1)

    test_output = AthleteGameTeamRosterMapper.new(test_query.to_sql)
    
    render json: test_output.json_result
  end

  def single_depth_test_double
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)
      .limit(2)

    test_output = AthleteGameTeamRosterMapper.new(test_query.to_sql)
    
    render json: test_output.json_result
  end

  ####

  def single_depth_multiple_object_test
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)

      test_output = AthleteMultipleSingleObjectMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  def single_depth_multiple_object_test_single
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)
      .limit(1)

      test_output = AthleteMultipleSingleObjectMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  def single_depth_multiple_object_test_double
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)
      .limit(2)

      test_output = AthleteMultipleSingleObjectMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  ####

  def single_depth_array_test
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id, athletes.user_id, athletes.school_id, athletes.graduation_year, athletes.created_at, athletes.updated_at")
      .joins(:game_team_roster)
      .order("game_id asc")
      #.where("game_id = 12 AND user_id = 42")
      # .limit(105)

    test_output = AthleteGameTeamRosterArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  def single_depth_array_test_single
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id, athletes.user_id, athletes.school_id, athletes.graduation_year, athletes.created_at, athletes.updated_at")
      .joins(:game_team_roster)
      .order("game_id asc")
      .limit(1)

    test_output = AthleteGameTeamRosterArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  def single_depth_array_test_double
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id, athletes.user_id, athletes.school_id, athletes.graduation_year, athletes.created_at, athletes.updated_at")
      .joins(:game_team_roster)
      .order("game_id asc")
      .limit(2)

    test_output = AthleteGameTeamRosterArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def single_item_array_test
    test_query = School
      .select("schools.id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.id AS athlete_id_again")
      .joins(:athlete)
    
    test_output = SchoolMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  def single_item_array_test_single
    test_query = School
      .select("schools.id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.id AS athlete_id_again")
      .joins(:athlete)
      .limit(1)
    
    test_output = SchoolMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  def single_item_array_test_double
    test_query = School
      .select("schools.id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.id AS athlete_id_again")
      .joins(:athlete)
      .limit(2)
    
    test_output = SchoolMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def single_depth_two_array_test
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id AS athlete_id, athletes.user_id, athletes.school_id, athletes.graduation_year, schools.id AS school_id, schools.country, schools.graduation_years")
      .joins(:game_team_roster)
      .joins(:school)

      test_output = AthleteGameTeamRosterDoubleArrayMapperMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  def single_depth_two_array_test_single
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id AS athlete_id, athletes.user_id, athletes.school_id, athletes.graduation_year, schools.id AS school_id, schools.country, schools.graduation_years")
      .joins(:game_team_roster)
      .joins(:school)
      .limit(1)

      test_output = AthleteGameTeamRosterDoubleArrayMapperMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  def single_depth_two_array_test_double
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id AS athlete_id, athletes.user_id, athletes.school_id, athletes.graduation_year, schools.id AS school_id, schools.country, schools.graduation_years")
      .joins(:game_team_roster)
      .joins(:school)
      .limit(2)

      test_output = AthleteGameTeamRosterDoubleArrayMapperMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  ####

  def double_depth_array_test
    test_query = Athlete
      .select("CONCAT(users.first_name, \",\", users.last_name, \",\", users.email) AS user_info, athletes.school_id, athletes.graduation_year, athletes.created_at, athletes.updated_at, game_team_roster.game_id")
      .joins(:game_team_roster, :user)
    
    test_output = GameRostersWithUserMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  def double_depth_array_test_single
    test_query = Athlete
      .select("CONCAT(users.first_name, \",\", users.last_name, \",\", users.email) AS user_info, athletes.school_id, athletes.graduation_year, athletes.created_at, athletes.updated_at, game_team_roster.game_id")
      .joins(:game_team_roster, :user)
      .limit(1)

    test_output = GameRostersWithUserMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  def double_depth_array_test_double
    test_query = Athlete
      .select("CONCAT(users.first_name, \",\", users.last_name, \",\", users.email) AS user_info, athletes.school_id, athletes.graduation_year, athletes.created_at, athletes.updated_at, game_team_roster.game_id")
      .joins(:game_team_roster, :user)
      .limit(2)
    
    test_output = GameRostersWithUserMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  ####

  def double_depth_single_object
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id AS athlete_id, athletes.user_id, athletes.school_id, athletes.graduation_year, schools.id AS school_id, schools.country, schools.graduation_years")
      .joins(:game_team_roster)
      .joins(:school)

    test_output = AthleteDoubleDepthSingleObjectMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def double_depth_single_object_paired_first_level
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)
      .joins(:school)

    test_output = DoubleDepthSingleObjectPairedFirstLevelMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def double_depth_single_object_paired_first_level_b
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.id AS athlete_id, athletes.user_id, athletes.school_id, athletes.graduation_year, schools.id AS school_id, schools.country, schools.graduation_years")
      .joins(:game_team_roster)
      .joins(:school)

    test_output = DoubleDepthSingleObjectPairedFirstLevelBMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def triple_depth_single_object
    test_query = Athlete
      .select("game_team_rosters.game_id, athletes.user_id, athletes.school_id, athletes.graduation_year")
      .joins(:game_team_roster)
      .joins(:school)

    test_output = TripleDepthSingleObjectMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def single_object_with_value_array
    test_query = School
      .select("schools.id, schools.id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id_again")
      .joins(:athlete)
    
    test_output = SingleObjectWithValueArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def value_array_in_single_object
    test_query = School
      .select("schools.id, schools.id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id")
      .joins(:athlete)
    
    test_output = ValueArrayInSingleObjectMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def object_array_in_single_object
    test_query = School
      .select("schools.id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.school_id AS athlete_school_id, athletes.graduation_year AS athlete_graduation")
      .joins(:athlete)

      test_output = ObjectArrayInSingleObjectMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  ####

  def single_object_in_object_array
    test_query = School
      .select("schools.graduation_years, schools.id, schools.name, schools.country")
      # .limit(2)

    test_output = SingleObjectInObjectArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def double_depth_single_object_in_object_array
    test_query = School
      .select("schools.graduation_years, schools.id, schools.name, schools.country")

    test_output = DoubleDepthSingleObjectInObjectArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result

  end

  ####

  def value_array_inside_object_array
    test_query = School
      .select("schools.graduation_years, schools.id, schools.name, schools.country")
      .order("schools.graduation_years")

    test_output = ValueArrayInsideObjectArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result

  end

  ####

  def single_object_in_objert_array_in_single_object
    test_query = School
      .select("schools.graduation_years, schools.id, schools.name, schools.country")

    test_output = SingleObjectInObjertArrayInSingleObjectMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def triple_depth_array_objects
    test_query = School
      .select("schools.id AS school_id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.user_id, athletes.graduation_year, games.id AS game_id, games.home_school_id, games.away_school_id, games.league_quality, games.created_at AS record_date")
      .joins("INNER JOIN athletes ON schools.id = athletes.school_id
INNER JOIN game_team_rosters ON game_team_rosters.athlete_id = athletes.id
INNER JOIN games ON games.id = game_team_rosters.game_id")

    test_output = TripleDepthArrayObjectMapper.new(test_query.to_sql)
    
    render json: test_output.json_result
  end

  ####

  def value_array_in_object_array_in_object_array
    test_query = School
      .select("schools.id AS school_id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.user_id, athletes.graduation_year, games.created_at AS record_date")
      .joins("INNER JOIN athletes ON schools.id = athletes.school_id
INNER JOIN game_team_rosters ON game_team_rosters.athlete_id = athletes.id
INNER JOIN games ON games.id = game_team_rosters.game_id")

    test_output = ValueArrayInObjectArrayInObjectArrayMapper.new(test_query.to_sql)

    render json: test_output.json_result
  end

  ####

  def value_array_object_array_in_object_array
    test_query = School
      .select("schools.id AS school_id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.user_id, athletes.graduation_year, games.id AS game_id, games.home_school_id, games.away_school_id, games.league_quality, games.created_at AS record_date")
      .joins("INNER JOIN athletes ON schools.id = athletes.school_id
INNER JOIN game_team_rosters ON game_team_rosters.athlete_id = athletes.id
INNER JOIN games ON games.id = game_team_rosters.game_id")

      test_output = ValueArrayObjectArrayInObjectArrayMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  ####

  def single_object_object_array_in_object_array
    test_query = School
      .select("schools.id AS school_id, schools.name, schools.country, schools.graduation_years, athletes.id AS athlete_id, athletes.user_id, athletes.graduation_year, games.id AS game_id, games.home_school_id, games.away_school_id, games.league_quality, games.created_at AS record_date, users.first_name, users.last_name, users.email")
      .joins("INNER JOIN athletes ON schools.id = athletes.school_id
INNER JOIN game_team_rosters ON game_team_rosters.athlete_id = athletes.id
INNER JOIN games ON games.id = game_team_rosters.game_id
INNER JOIN users ON users.id = athletes.user_id")

      test_output = SingleObjectObjectArrayInObjectArrayMapper.new(test_query.to_sql)

      render json: test_output.json_result
  end

  ####

end