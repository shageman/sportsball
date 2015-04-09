module App
  class TeamsController < ApplicationController
    before_action :set_team, only: [:show, :edit, :update, :destroy]

    def index
      @teams = App::Team.all
    end

    def new
      @team = App::Team.new
    end

    def edit
    end

    def create
      @team = App::Team.new(team_params)

      if @team.save
        redirect_to teams_url, notice: 'Team was successfully created.'
      else
        render :new
      end
    end

    def update
      if @team.update(team_params)
        redirect_to teams_url, notice: 'Team was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @team.destroy
      redirect_to teams_url, notice: 'Team was successfully destroyed.'
    end

    private
      def set_team
        @team = App::Team.find(params[:id])
      end

      def team_params
        params.require(:team).permit(:name)
      end
  end
end
