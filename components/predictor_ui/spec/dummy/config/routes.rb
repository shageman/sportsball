Rails.application.routes.draw do

  mount PredictorUi::Engine => "/predictor_ui"

  root to: "predictor_ui/predictions#new"
end
