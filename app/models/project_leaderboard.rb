class ProjectLeaderboard < ApplicationRecord
  include LeaderboardScopes
  include LeaderboardCalculation

  belongs_to :project

  def name
    project.name
  end
end
