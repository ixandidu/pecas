class UserLeaderboard < ApplicationRecord
  include LeaderboardScopes
  include LeaderboardCalculation

  belongs_to :user

  def name
    user.name
  end
end
