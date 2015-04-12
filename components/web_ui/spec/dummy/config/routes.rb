Rails.application.routes.draw do

  mount WebUi::Engine => "/web_ui"

  root to: "web_ui/predictions#new"
end
