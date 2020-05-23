Rails.application.routes.draw do
  get 'leaderboard/users'
  get 'leaderboard/projects'
  root 'leaderboard#users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
