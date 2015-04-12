Rails.application.routes.draw do

  mount WelcomeUi::Engine => "/welcome_ui"

  root to: "welcome_ui/predictions#new"
end
