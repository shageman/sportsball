Rails.application.routes.draw do
  mount WebUi::Engine, at: "/web_ui"
  mount TeamsUi::Engine, at: "/teams_ui"

  root to: "web_ui/welcomes#show"
end
