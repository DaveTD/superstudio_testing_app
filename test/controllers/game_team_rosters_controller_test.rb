require 'test_helper'

class GameTeamRostersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_team_roster = game_team_rosters(:one)
  end

  test "should get index" do
    get game_team_rosters_url
    assert_response :success
  end

  test "should get new" do
    get new_game_team_roster_url
    assert_response :success
  end

  test "should create game_team_roster" do
    assert_difference('GameTeamRoster.count') do
      post game_team_rosters_url, params: { game_team_roster: {  } }
    end

    assert_redirected_to game_team_roster_url(GameTeamRoster.last)
  end

  test "should show game_team_roster" do
    get game_team_roster_url(@game_team_roster)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_team_roster_url(@game_team_roster)
    assert_response :success
  end

  test "should update game_team_roster" do
    patch game_team_roster_url(@game_team_roster), params: { game_team_roster: {  } }
    assert_redirected_to game_team_roster_url(@game_team_roster)
  end

  test "should destroy game_team_roster" do
    assert_difference('GameTeamRoster.count', -1) do
      delete game_team_roster_url(@game_team_roster)
    end

    assert_redirected_to game_team_rosters_url
  end
end
