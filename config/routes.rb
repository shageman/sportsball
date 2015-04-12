Rails.application.routes.draw do
  mount WelcomeUi::Engine, at: "/welcome_ui"

  mount TeamsUi::Engine, at: "/teams_ui"
  mount GamesUi::Engine, at: "/games_ui"
  mount PredictorUi::Engine, at: "/predictor_ui"

  root to: "welcome_ui/welcomes#show"
end
