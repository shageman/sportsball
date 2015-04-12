Rails.application.routes.draw do
  mount WebUi::Engine, at: "/web_ui"
  mount TeamsUi::Engine, at: "/teams_ui"
  mount GamesUi::Engine, at: "/games_ui"
  mount PredictorUi::Engine, at: "/predictor_ui"

  root to: "web_ui/welcomes#show"
end
