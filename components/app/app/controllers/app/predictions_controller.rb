module App
  class PredictionsController < ApplicationController
    def new
      @teams = App::Team.all
    end

    def create
      predictor = Predictor::Predictor.new(App::Team.all)
      predictor.learn(App::Game.all)
      @prediction = predictor.predict(
          App::Team.find(params['first_team']['id']),
          App::Team.find(params['second_team']['id']))
    end
  end
end
