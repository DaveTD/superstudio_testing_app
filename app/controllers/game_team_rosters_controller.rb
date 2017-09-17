class GameTeamRostersController < ApplicationController
  before_action :set_game_team_roster, only: [:show, :edit, :update, :destroy]

  # GET /game_team_rosters
  # GET /game_team_rosters.json
  def index
    @game_team_rosters = GameTeamRoster.all
  end

  # GET /game_team_rosters/1
  # GET /game_team_rosters/1.json
  def show
  end

  # GET /game_team_rosters/new
  def new
    @game_team_roster = GameTeamRoster.new
  end

  # GET /game_team_rosters/1/edit
  def edit
  end

  # POST /game_team_rosters
  # POST /game_team_rosters.json
  def create
    @game_team_roster = GameTeamRoster.new(game_team_roster_params)

    respond_to do |format|
      if @game_team_roster.save
        format.html { redirect_to @game_team_roster, notice: 'Game team roster was successfully created.' }
        format.json { render :show, status: :created, location: @game_team_roster }
      else
        format.html { render :new }
        format.json { render json: @game_team_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_team_rosters/1
  # PATCH/PUT /game_team_rosters/1.json
  def update
    respond_to do |format|
      if @game_team_roster.update(game_team_roster_params)
        format.html { redirect_to @game_team_roster, notice: 'Game team roster was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_team_roster }
      else
        format.html { render :edit }
        format.json { render json: @game_team_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_team_rosters/1
  # DELETE /game_team_rosters/1.json
  def destroy
    @game_team_roster.destroy
    respond_to do |format|
      format.html { redirect_to game_team_rosters_url, notice: 'Game team roster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_team_roster
      @game_team_roster = GameTeamRoster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_team_roster_params
      params.fetch(:game_team_roster, {})
    end
end
