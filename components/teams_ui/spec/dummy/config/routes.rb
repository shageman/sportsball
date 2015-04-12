Rails.application.routes.draw do

  mount TeamsUi::Engine => "/teams_ui"

  root to: "teams#index"
end
