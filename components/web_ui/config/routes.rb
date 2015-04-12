WebUi::Engine.routes.draw do
  resources :games

  resource :welcome, only: [:show]
  resource :prediction, only: [:new, :create]

  root to: "welcomes#show"
end
