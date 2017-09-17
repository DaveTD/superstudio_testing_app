class Athlete < ApplicationRecord
  belongs_to :user
  belongs_to :school
  has_many :game_team_roster
end
