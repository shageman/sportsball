module App
  class PredictionsController < ApplicationController
    def new
      @teams = Teams::Team.all
    end

    def create
      predictor = Predictor::Predictor.new(Teams::Team.all)
      predictor.learn(App::Game.all)
      @prediction = predictor.predict(
          Teams::Team.find(params['first_team']['id']),
          Teams::Team.find(params['second_team']['id']))
    end
  end
end
