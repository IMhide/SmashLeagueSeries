class TeamsController < ApplicationController
  def index
  end

  def show
    @team = Team.includes(:players).find(params[:id])
  end
end
