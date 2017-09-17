class Game < ApplicationRecord
  belongs_to :sport
  belongs_to :home_school, class_name: 'School'
  belongs_to :away_school, class_name: 'School'
end
