Rails.application.routes.draw do

  mount GamesUi::Engine => "/games_ui"

  root to: "games_ui/games#index"
end
